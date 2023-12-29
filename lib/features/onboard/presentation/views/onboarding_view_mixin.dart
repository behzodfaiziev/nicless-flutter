import 'package:flutter/material.dart';

import 'onboarding_view.dart';

mixin OnboardingViewMixin on State<OnboardingView>{
  PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

}
