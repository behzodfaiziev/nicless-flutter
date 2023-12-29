import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'onboarding_view_mixin.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with OnboardingViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('OnboardingView'),
      ),
    );
  }
}
