part of 'sign_in_view.dart';

mixin SignInViewMixin on State<SignInView> {
  late final AuthBloc authBloc;

  late final FocusNode emailFocusNode;

  late final FocusNode passwordFocusNode;

  late final TextEditingController emailTextEditingController;

  late final TextEditingController passwordTextEditingController;

  @override
  void initState() {
    authBloc = context.read<AuthBloc>();
    emailTextEditingController = TextEditingController();
    emailTextEditingController.text = 'behzod.faiziev@gmail.com';
    passwordTextEditingController = TextEditingController();
    passwordTextEditingController.text = '19191919';
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    super.dispose();
  }

  void pageListener(BuildContext context, AuthState state) {
    if (state is IsAuthenticatedState) {
      context.pushReplaceAll(const MainRoute());
    }
    if (state is AuthError) {
      CustomToast.errorToast(context, state.message);
    }
  }

  void onSignInButtonPressed() {
    if (emailTextEditingController.text.isEmpty) {
      CustomToast.errorToast(context, 'Email is required');
      return;
    }
    if (passwordTextEditingController.text.isEmpty) {
      CustomToast.errorToast(context, 'Password is required');
      return;
    }
    authBloc.add(
      SignInEvent(
        email: emailTextEditingController.text.trim(),
        password: passwordTextEditingController.text.trim(),
      ),
    );
  }
}
