part of 'automatic_counter_view.dart';

mixin AutomaticCounterViewMixin on State<AutomaticCounterView> {
  StreamSubscription<bool>? _vapeStreamSubscription;
  late final AnimationController animationController;
  final AutomaticCounterBloc automaticCounterBloc = sl<AutomaticCounterBloc>();

  @override
  void dispose() {
    _vapeStreamSubscription?.cancel();
    super.dispose();
  }

  void setIsInhalingStreamSubscription(BuildContext ctx) {
    if (_vapeStreamSubscription != null) {
      _vapeStreamSubscription!.cancel();
    }

    _vapeStreamSubscription = ctx
        .read<AutomaticCounterBloc>()
        .getVapeStreamSubscription(widget.connection!)
        ?.listen((bool isInhaling) {
      if (isInhaling) {
        onInhaled(ctx);
      } else {
        onExhaled(ctx);
      }
    });
  }

  void ticker(BuildContext context) {
    bool isForward = false;
    onInhaled(context);
    Timer.periodic(const Duration(seconds: 3), (timer) {
      isForward ? onInhaled(context) : onExhaled(context);
      isForward = !isForward;
    });
  }

  Timer? timer;

  void onInhaled(BuildContext context) {
    animationController.forward();

    context.read<AutomaticCounterBloc>().add(const AddPuffEvent());

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      context.read<AutomaticCounterBloc>().add(const AddInhalingEvent());
    });
  }

  void onExhaled(BuildContext context) {
    context.read<AutomaticCounterBloc>().add(const AddInhalingEvent());

    timer?.cancel();

    animationController.reverse();
  }

  void pageListener(BuildContext context, AutomaticCounterState state) {
    if (state is AutomaticCounterStarted) {
      setIsInhalingStreamSubscription(context);
    }
    if (state is SaveDailySmokingFailure) {
      CustomToast.errorToast(context, state.message);
    }
    if (state is SaveDailySmokingSuccess) {
      context.read<BluetoothBloc>().add(
            BluetoothDisconnectEvent(
              connection: widget.connection!,
              device: widget.device!,
            ),
          );
    }
  }

  void bluetoothListener(BuildContext context, BluetoothState state) {
    if (state is BluetoothDeviceDisconnected) {
      context.pushReplaceAll(const MainRoute());
    }
    if (state is BluetoothDeviceFailedToConnect) {
      CustomToast.errorToast(
        context,
        'Failed to disconnect!',
      );
      context.pushReplaceAll(const MainRoute());
    }
  }

  Null Function()? onFinishButtonPressed(AutomaticCounterState state) {
    return state is AutomaticCounterLoading
        ? null
        : () {
            automaticCounterBloc
                .add(SaveDailySmokingEvent(smokingId: widget.smokingId));
          };
  }
}
