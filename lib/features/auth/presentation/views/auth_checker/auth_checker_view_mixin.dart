part of 'auth_checker_view.dart';

mixin AuthCheckerViewMixin on State<AuthCheckerView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<AuthBloc>().add(const IsAuthenticated());
    });
  }
}
