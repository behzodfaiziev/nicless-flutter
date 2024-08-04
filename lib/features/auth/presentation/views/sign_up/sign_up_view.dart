import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

part 'sign_up_view_mixin.dart';

@RoutePage()
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with SignUpViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
