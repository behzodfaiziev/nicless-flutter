import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../../core/widgets/image/base_asset_image.dart';
import '../../../../../core/widgets/toast/custom_toast.dart';
import '../../../../../product/navigator/app_router.dart';
import '../../../../../product/utils/constants/asset_paths/images_const.dart';
import '../../../../../product/widgets/text/top_title.dart';
import '../../bloc/auth_bloc.dart';

@RoutePage()
class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is IsAuthenticatedResult && state.isAuthenticated) {
          context.pushReplaceAll(const OnboardingRoute());
        }
        if (state is AuthError) {
          CustomToast.errorToast(context, state.message ?? '');
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: Column(children: [
          const Spacer(flex: 5),
          const Expanded(
            flex: 3,
            child: TopTitle(
                title: 'Welcome to Nicless',
                subTitle: 'Take control over nicotine'),
          ),
          Expanded(
              flex: 10,
              child: Center(
                child: BaseAssetImage(
                    height: context.height * 0.25,
                    ImagesConst.instance.smokingKills),
              )),
          Expanded(
            flex: 5,
            child: Center(
              child: BaseElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const SignInAnonymously());
                },
                child: const Text('Sign in anonymously'),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
