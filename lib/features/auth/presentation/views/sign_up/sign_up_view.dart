import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../../core/widgets/buttons/base_outlined_text_button.dart';
import '../../../../../core/widgets/text_fields/base_text_form_field.dart';
import '../../../../../core/widgets/toast/custom_toast.dart';
import '../../../../../product/init/lang/locale_keys.g.dart';
import '../../../../../product/init/navigator/app_router.dart';
import '../../../../../product/utils/constants/ui_constants/font_size_const.dart';
import '../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../bloc/auth_bloc.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
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
                    'Sign up',
                    style: context.primaryTextTheme.headlineMedium,
                  ),
                ),
              ),
              Expanded(flex: 6, child: inputFields()),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    signUpButton(context),
                    signInTextButton(context),
                  ],
                ),
              ),
            ],
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
            focusNode: fullNameFocusNode,
            controller: fullNameTextEditingController,
            hintText: 'Full Name',
            icon: Icons.person,
            keyboardType: TextInputType.emailAddress,
            onSubmitted: (value) {
              emailFocusNode.requestFocus();
            },
          ),
          Padding(
            padding: AppPadding.vertical16,
            child: BaseTextFormField(
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
          ),
          BaseTextFormField(
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
          const Spacer(flex: 10),
        ],
      ),
    );
  }

  Widget signInTextButton(BuildContext context) {
    return Padding(
      padding: AppPadding.top12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.secondary,
            ),
          ),
          Padding(
            padding: AppPadding.left8,
            child: BaseOutlinedTextButton(
              text: LocaleKeys.buttons_signIn.tr(),
              fontColor: context.primaryTextTheme.bodyMedium?.color,
              fontSize: FontSizeConst.small,
              isUnderline: false,
              onPressed: () {
                context.pushReplaceAll(const SignInRoute());
              },
            ),
          ),
        ],
      ),
    );
  }

  BaseElevatedButton signUpButton(BuildContext context) {
    return BaseElevatedButton(
      onPressed: onSignUpButtonPressed,
      child: Text(
        LocaleKeys.buttons_signUp.tr(),
        style: context.primaryTextTheme.bodyMedium,
      ),
    );
  }
}
