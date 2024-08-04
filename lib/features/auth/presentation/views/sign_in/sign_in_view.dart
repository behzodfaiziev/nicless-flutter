import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../../core/widgets/buttons/base_outlined_text_button.dart';
import '../../../../../core/widgets/text_fields/base_text_form_field.dart';
import '../../../../../product/init/lang/locale_keys.g.dart';
import '../../../../../product/init/navigator/app_router.dart';
import '../../../../../product/utils/constants/ui_constants/font_size_const.dart';
import '../../../../../product/utils/constants/ui_constants/padding_const.dart';

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
                    'Sign In',
                    style: context.primaryTextTheme.headlineMedium,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: AppPadding.top50,
                  child: Column(
                    children: [
                      buildTextField(
                        focusNode: emailFocusNode,
                        textEditingController: emailTextEditingController,
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
                      buildTextField(
                        focusNode: passwordFocusNode,
                        textEditingController: passwordTextEditingController,
                        hintText: 'Password',
                        icon: Icons.lock,
                        isObscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        onSubmitted: (value) {
                          passwordFocusNode.unfocus();
                        },
                        onChanged: (value) {
                          passwordTextEditingController.text =
                              value.toLowerCase();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    BaseElevatedButton(
                      child: Text(
                        LocaleKeys.buttons_signIn.tr(),
                        style: context.primaryTextTheme.bodyMedium,
                      ),
                      onPressed: () {},
                    ),
                    Padding(
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
                              fontColor:
                                  context.primaryTextTheme.bodyMedium?.color,
                              fontSize: FontSizeConst.small,
                              isUnderline: false,
                              onPressed: () {
                                context.push(const SignUpRoute());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required String hintText,
    required IconData icon,
    required TextEditingController textEditingController,
    required FocusNode focusNode,
    required TextInputType keyboardType,
    required void Function(String value)? onSubmitted,
    required void Function(String value) onChanged,
    bool isObscureText = false,
  }) {
    return Padding(
      padding: AppPadding.vertical8,
      child: BaseTextFormField(
        icon: icon,
        controller: textEditingController,
        keyboardType: keyboardType,
        obscureText: isObscureText,
        hintText: hintText,
        focusNode: focusNode,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
      ),
    );
  }
}
