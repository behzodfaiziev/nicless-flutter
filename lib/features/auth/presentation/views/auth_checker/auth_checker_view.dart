import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

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
    return const Scaffold();
  }
}
