import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../product/widgets/button/pop_button.dart';
import '../bloc/onboarding_bloc.dart';
import 'modules/connect_bluetooth/connect_bluetooth_page.dart';
import 'modules/smoking_info/smoking_info_page.dart';
import 'modules/smoking_type/smoking_type_page.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    required this.pageController,
    required this.onButtonPressed,
    required this.smokingInfoPageParams,
    required this.isUserCreated,
    super.key,
  });

  final bool isUserCreated;
  final PageController pageController;
  final void Function(BuildContext context, int currentIndex) onButtonPressed;
  final SmokingInfoPageParams smokingInfoPageParams;

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
                  onPressed: () async {
                    await onPopButtonPressed(context);
                  },
                ),
              ),),
              Expanded(
                flex: 12,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (index) {},
                  children: [
                    const SmokingTypePage(),
                    SmokingInfoPage(params: smokingInfoPageParams),
                    ConnectBluetoothPage(
                        smokingInfoPageParams: smokingInfoPageParams,),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Padding(
                    padding: context.mainHorizontalPadding,
                    child: BlocBuilder<OnboardingBloc, OnboardingState>(
                      buildWhen: (previous, current) =>
                          current is OnNextButtonTriggered,
                      builder: (context, state) {
                        if (state is OnNextButtonTriggered) {
                          return BaseElevatedButton(
                            onPressed: state.isEnabled
                                ? () => onButtonPressed(context, state.index)
                                : null,
                            child: Text(state.isLastPage ? 'Done' : 'Next'),
                          );
                        }

                        return const BaseElevatedButton(
                          child: Text('Next'),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onPopButtonPressed(BuildContext context) async {
    if (isUserCreated) {
      await context.pop();
      return;
    }
    context.read<OnboardingBloc>().add(const BackButtonPressed());

    await pageController.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn,);
  }
}
