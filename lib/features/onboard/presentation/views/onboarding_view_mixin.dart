part of 'onboarding_view.dart';

mixin OnboardingViewMixin on State<OnboardingView> {
  late final PageController pageController = PageController(initialPage: 0);

  void _onboardBlocListener(BuildContext context, OnboardingState state) {
    // if ((state is OnboardingStatus && state.isFirstTimer == false) ||
    //     state is UserCached) {
    //   /// If the user is not first timer or the user is cached
    //   /// then navigate to the [SignInRoute]
    //   context.router.replace(const SignInRoute());
    // }
  }

  void _onDispose(OnboardingBloc bloc) {
    pageController.dispose();
    bloc.close();
  }

  Future<void> _onBlocReady(OnboardingBloc bloc) async {
    /// Make sure to start the [CachedValuesHiveOperation] before
    /// checking if the user is first timer or not
    // await sl<CachedValuesHiveOperation>().start();
    // bloc.add(const CheckIfUserFirstTimerEvent());
  }

  void onButtonPressed(BuildContext context, int currentPageIndex) {
    if (currentPageIndex != 3) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }

    switch (currentPageIndex) {
      case 1:
        context.read<OnboardingBloc>().add(GetBluetoothDevicesEvent());
      case 2:
        context.pushReplaceAll(const MainRoute());
      case 3:
        context.pushReplaceAll(const MainRoute());
      default:
    }
  }
}
