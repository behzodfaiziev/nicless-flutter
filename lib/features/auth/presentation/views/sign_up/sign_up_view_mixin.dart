part of 'sign_up_view.dart';

mixin SignUpViewMixin on State<SignUpView> {
  late final AuthBloc authBloc;

  late final FocusNode emailFocusNode;

  late final FocusNode fullNameFocusNode;

  late final FocusNode passwordFocusNode;

  late final TextEditingController emailTextEditingController;

  late final TextEditingController fullNameTextEditingController;

  late final TextEditingController passwordTextEditingController;

  @override
  void initState() {
    authBloc = context.read<AuthBloc>();

    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    fullNameFocusNode = FocusNode();

    fullNameTextEditingController = TextEditingController();
    fullNameTextEditingController.text = 'Howard Herzog';
    emailTextEditingController = TextEditingController();
    emailTextEditingController.text = 'Howard_Herzog@gmail.com';
    passwordTextEditingController = TextEditingController();
    passwordTextEditingController.text = 'test12345';

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
    if (state is UserSignedUpState) {
      CustomToast.successToast(
        context,
        'Successfully signed up. Now you can sign in',
      );
      context.pushReplaceAll(const SignInRoute());
    }
    if (state is AuthError) {
      CustomToast.errorToast(context, state.message);
    }
  }

  void onSignUpButtonPressed() {
    if (emailTextEditingController.text.isEmpty) {
      CustomToast.errorToast(context, 'Email is required');
      return;
    }
    if (passwordTextEditingController.text.isEmpty) {
      CustomToast.errorToast(context, 'Password is required');
      return;
    }
    authBloc.add(
      SignUpEvent(
        email: emailTextEditingController.text.trim(),
        password: passwordTextEditingController.text.trim(),
        fullName: fullNameTextEditingController.text.trim(),
        isAndroid: Platform.isAndroid,
      ),
    );
  }
}
