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
      print('Is Inhaling: $isInhaling');
      if (isInhaling) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
    });
  }
}
