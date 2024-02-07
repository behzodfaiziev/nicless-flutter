import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../product/init/injection_container/_injection_container.dart';
import '../../../../product/navigator/app_router.dart';
import '../../../bluetooth/presentation/bloc/bluetooth_bloc.dart';
import '../bloc/onboarding_bloc.dart';
import 'modules/smoking_info/smoking_info_page.dart';
import 'onboarding_body.dart';

part 'onboarding_view_mixin.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({this.isUserCreated = false, super.key});

  final bool isUserCreated;

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with OnboardingViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OnboardingBloc>(),
      child: Scaffold(
        body: BlocConsumer<OnboardingBloc, OnboardingState>(
          listenWhen: (pr, cr) => cr is OnSaveVapeDataSuccess,
          listener: (context, state) {
            if (state is OnSaveVapeDataSuccess) {
              context.pushReplaceAll(const MainRoute());
            }
          },
          buildWhen: (pr, cr) =>
              cr is OnboardingLoading || cr is OnboardingInitial,
          builder: (context, state) {
            if (state is OnboardingLoading && state.isLoading) {
              return const Center(child: BaseAdaptiveCPI());
            }

            return OnboardingBody(
              onButtonPressed: onButtonPressed,
              pageController: pageController,
              smokingInfoPageParams: smokingInfoPageParams(),
              isUserCreated: widget.isUserCreated,
            );
          },
        ),
      ),
    );
  }

  SmokingInfoPageParams smokingInfoPageParams() {
    return SmokingInfoPageParams(
      priceEditingController: priceEditingController,
      capacityEditingController: capacityEditingController,
      nicotineEditingController: nicotineEditingController,
      vapeNameEditingController: vapeNameEditingController,
      priceFocusNode: priceFocusNode,
      capacityFocusNode: capacityFocusNode,
      nicotineFocusNode: nicotineFocusNode,
      vapeNameFocusNode: vapeNameFocusNode,
    );
  }
}
