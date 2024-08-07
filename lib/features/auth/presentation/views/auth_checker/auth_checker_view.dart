import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../product/init/navigator/app_router.dart';
import '../../../../../product/widgets/toast/app_toast.dart';
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
        listener: pageListener,
        child: const SizedBox(),
      ),
    );
  }


}
