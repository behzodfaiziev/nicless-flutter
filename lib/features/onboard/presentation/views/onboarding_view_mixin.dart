part of 'onboarding_view.dart';

mixin OnboardingViewMixin on State<OnboardingView> {
  late final PageController pageController = PageController();
  final TextEditingController priceEditingController = TextEditingController();
  final TextEditingController capacityEditingController =
      TextEditingController();
  final TextEditingController nicotineEditingController =
      TextEditingController();
  final TextEditingController vapeNameEditingController =
      TextEditingController();

  final FocusNode priceFocusNode = FocusNode();
  final FocusNode capacityFocusNode = FocusNode();
  final FocusNode nicotineFocusNode = FocusNode();
  final FocusNode vapeNameFocusNode = FocusNode();

  // void _onboardBlocListener(BuildContext context, OnboardingState state) {
  // if ((state is OnboardingStatus && state.isFirstTimer == false) ||
  //     state is UserCached) {
  //   /// If the user is not first timer or the user is cached
  //   /// then navigate to the [SignInRoute]
  //   context.router.replace(const SignInRoute());
  // }
  // }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onButtonPressed(BuildContext context, int currentPageIndex) {
    switch (currentPageIndex) {
      case 0:
        context.read<OnboardingBloc>().add(const NextButtonPressed());
        pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      case 1:
        if (context.read<OnboardingBloc>().hasBluetooth) {
          context.read<BluetoothBloc>().add(GetBluetoothDevicesEvent());
          context.read<OnboardingBloc>().add(const NextButtonPressed());

          pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        } else {
          context.pushReplaceAll(const MainRoute());
        }
      case 2:
        context.pushReplaceAll(const MainRoute());
      default:
    }
  }
}
