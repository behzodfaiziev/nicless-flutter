part of 'automatic_counter_view.dart';

mixin AutomaticCounterViewMixin on State<AutomaticCounterView> {
  StreamSubscription<bool>? _vapeStreamSubscription;
  late final AnimationController animationController;

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
}
