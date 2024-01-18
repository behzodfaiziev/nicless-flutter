import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../product/widgets/button/pop_button.dart';
import 'modules/connect_bluetooth/connect_bluetooth_page.dart';
import 'modules/smoking_type/smoking_type_page.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({
    required this.pageController,
    required this.onButtonPressed,
    super.key,
  });

  final PageController pageController;
  final void Function(BuildContext context, int currentIndex) onButtonPressed;

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    widget.pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
              )),
              Expanded(
                flex: 12,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: widget.pageController,
                  onPageChanged: (index) {},
                  children: [
                    const SmokingTypePage(),
                    const ConnectBluetoothPage(),
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
                flex: 2,
                child: Center(
                  child: Padding(
                    padding: context.mainHorizontalPadding,
                    child: BaseElevatedButton(
                      onPressed: () {
                        currentPageIndex++;
                        widget.onButtonPressed(context, currentPageIndex);
                      },
                      child: Text(
                        currentPageIndex == 2 ? 'Login' : 'Next',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
