import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../product/navigator/app_router.dart';
import '../../../../product/widgets/button/pop_button.dart';
import 'modules/smoking_type/smoking_type_view.dart';
import 'onboarding_view_mixin.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with OnboardingViewMixin {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: context.height * 0.9,
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: context.mainHorizontalPadding,
                child: PopButton(
                  onPressed: () {
                    pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
              )),
              Expanded(
                flex: 12,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (index) {
                    currentPageIndex = index;
                    setState(() {});
                  },
                  children: [
                    const OnboardingSmokingTypeView(),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.lightGreenAccent,
                    ),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: context.mainHorizontalPadding,
                  child: BaseElevatedButton(
                    onPressed: () {
                      if (currentPageIndex == 3) {
                        context.pushReplaceAll(const MainRoute());
                      } else {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Text(
                      currentPageIndex == 3 ? 'Login' : 'Next',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
