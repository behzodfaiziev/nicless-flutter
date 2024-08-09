part of 'onboarding_view.dart';

mixin OnboardingViewMixin on State<OnboardingView> {
  late final PageController pageController = PageController();
  final TextEditingController priceEditingController = TextEditingController();
  final TextEditingController nicotineEditingController =
      TextEditingController();
  final TextEditingController vapeNameEditingController =
      TextEditingController();
  final TextEditingController vapeTotalPuffLimitController =
      TextEditingController();

  final FocusNode priceFocusNode = FocusNode();
  final FocusNode nicotineFocusNode = FocusNode();
  final FocusNode vapeNameFocusNode = FocusNode();
  final FocusNode vapeTotalPuffLimitFocusNode = FocusNode();

  @override
  void initState() {


    super.initState();
  }

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
