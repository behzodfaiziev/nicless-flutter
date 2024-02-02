import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../../product/navigator/app_router.dart';
import '../../bloc/auth_bloc.dart';

part 'auth_checker_view_mixin.dart';

@RoutePage()
class AuthCheckerView extends StatefulWidget {
  const AuthCheckerView({super.key});

  @override
  State<AuthCheckerView> createState() => _AuthCheckerViewState();
}

class _AuthCheckerViewState extends State<AuthCheckerView>
    with AuthCheckerViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is IsAuthenticatedResult) {
          context.pushReplaceAll(
            state.isAuthenticated ? const HomeRoute() : const LandingRoute(),
          );
        }
        if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message ?? 'An error occurred'),
            ),
          );
        }
      },
      child: const Center(
        child: BaseAdaptiveCPI(),
      ),
    ));
  }
}
