import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../../core/widgets/buttons/base_outlined_text_button.dart';
import '../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../../core/widgets/text_fields/base_text_form_field.dart';
import '../../../../../core/widgets/toast/custom_toast.dart';
import '../../../../../product/init/lang/locale_keys.g.dart';
import '../../../../../product/init/navigator/app_router.dart';
import '../../../../../product/utils/constants/ui_constants/font_size_const.dart';
import '../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../bloc/auth_bloc.dart';

part 'sign_in_view_mixin.dart';

@RoutePage()
class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> with SignInViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>(),
        listener: pageListener,
        child: SingleChildScrollView(
          child: Container(
            margin: context.mainHorizontalPadding,
            height: context.safeHeight,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Sign In',
                      style: context.primaryTextTheme.headlineMedium,
                    ),
                  ),
                ),
                Expanded(flex: 6, child: inputFields()),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      signInButton(context),
                      signUpTextButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget inputFields() {
    return Padding(
      padding: AppPadding.top50,
      child: Column(
        children: [
          const Spacer(),
          BaseTextFormField(
            focusNode: emailFocusNode,
            controller: emailTextEditingController,
            hintText: 'Email',
            icon: Icons.email,
            keyboardType: TextInputType.emailAddress,
            onSubmitted: (value) {
              passwordFocusNode.requestFocus();
            },
            onChanged: (value) {
              emailTextEditingController.text = value.toLowerCase();
            },
          ),
          Padding(
            padding: AppPadding.top16,
            child: BaseTextFormField(
              focusNode: passwordFocusNode,
              controller: passwordTextEditingController,
              hintText: 'Password',
              icon: Icons.lock,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              onSubmitted: (value) {
                passwordFocusNode.unfocus();
              },
              onChanged: (value) {
                passwordTextEditingController.text = value.toLowerCase();
              },
            ),
          ),
          const Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }

  Widget signUpTextButton(BuildContext context) {
    return Padding(
      padding: AppPadding.top12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.secondary,
            ),
          ),
          Padding(
            padding: AppPadding.left8,
            child: BaseOutlinedTextButton(
              text: LocaleKeys.buttons_signUp.tr(),
              fontColor: context.primaryTextTheme.bodyMedium?.color,
              fontSize: FontSizeConst.small,
              isUnderline: false,
              onPressed: () {
                context.pushReplaceAll(const SignUpRoute());
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget signInButton(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) =>
          current is AuthLoading || current is AuthError,
      builder: (context, state) {
        return BaseElevatedButton(
          onPressed: onSignInButtonPressed,
          child: state is AuthLoading
              ? const BaseAdaptiveCPI()
              : Text(
                  LocaleKeys.buttons_signIn.tr(),
                  style: context.primaryTextTheme.bodyMedium,
                ),
        );
      },
    );
  }
}
