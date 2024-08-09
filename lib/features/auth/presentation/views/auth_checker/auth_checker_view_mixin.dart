part of 'auth_checker_view.dart';

mixin AuthCheckerViewMixin on State<AuthCheckerView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<AuthBloc>().add(const IsAuthenticatedEvent());
    });
  }

  void pageListener(BuildContext context, AuthState state) {
    if (state is IsAuthenticatedState) {
      context.pushReplaceAll(
        state.isAuth ? const HomeRoute() : const SignInRoute(),
      );
    }
    if (state is AuthError) {
      AppToast.error(
        context: context,
        message: state.message ?? 'An error occurred',
      );
      context.pushReplaceAll(const SignInRoute());
    }
  }
}
