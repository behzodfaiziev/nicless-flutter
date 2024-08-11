import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/text_fields/base_text_form_field.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import '../../../bloc/onboarding_bloc.dart';

class SmokingInfoPage extends StatelessWidget {
  const SmokingInfoPage({required this.params, super.key});

  final SmokingInfoPageParams params;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: TopTitle(
            title: 'Tell Us About Your \n Smoking Device',
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: context.mainHorizontalPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextField(
                  focusNode: params.priceFocusNode,
                  hintText: 'Price of your device (in USD)',
                  keyboardType: TextInputType.number,
                  textEditingController: params.priceEditingController,
                  onSubmitted: (value) {
                    params.priceFocusNode.unfocus();
                    params.vapeTotalPuffLimitFocusNode.requestFocus();
                  },
                ),
                buildTextField(
                  focusNode: params.vapeTotalPuffLimitFocusNode,
                  hintText: 'Capacity of your device (in puffs)',
                  keyboardType: TextInputType.number,
                  textEditingController: params.vapeTotalPuffLimitController,
                  onSubmitted: (value) {
                    params.vapeTotalPuffLimitFocusNode.unfocus();
                    params.nicotineFocusNode.requestFocus();
                  },
                ),
                buildTextField(
                  focusNode: params.nicotineFocusNode,
                  hintText: 'Nicotine percentage',
                  keyboardType: TextInputType.number,
                  textEditingController: params.nicotineEditingController,
                  onSubmitted: (value) {
                    params.nicotineFocusNode.unfocus();
                    params.vapeNameFocusNode.requestFocus();
                  },
                ),
                buildTextField(
                  focusNode: params.vapeNameFocusNode,
                  hintText: "Vape's name (optional)",
                  keyboardType: TextInputType.text,
                  textEditingController: params.vapeNameEditingController,
                  onSubmitted: (value) {
                    params.vapeNameFocusNode.unfocus();
                  },
                ),
                Row(
                  children: [
                    BlocBuilder<OnboardingBloc, OnboardingState>(
                      buildWhen: (previous, current) =>
                          current is OnSmokingDeviceHasBluetooth,
                      builder: (context, state) {
                        return Checkbox(
                          value: state is OnSmokingDeviceHasBluetooth &&
                              state.hasBluetooth,
                          onChanged: (bool? value) {
                            context.read<OnboardingBloc>().add(
                                  SmokingDeviceHasBluetooth(
                                    hasBluetooth: value ?? false,
                                  ),
                                );
                          },
                        );
                      },
                    ),
                    Text(
                      'My smoking device has bluetooth',
                      style: context.primaryTextTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTextField({
    required String hintText,
    required TextEditingController textEditingController,
    required FocusNode focusNode,
    required TextInputType keyboardType,
    required void Function(String value)? onSubmitted,
  }) {
    return Padding(
      padding: AppPadding.vertical8,
      child: BaseTextFormField(
        controller: textEditingController,
        keyboardType: keyboardType,
        hintText: hintText,
        focusNode: focusNode,
        onSubmitted: onSubmitted,
      ),
    );
  }
}

class SmokingInfoPageParams {
  SmokingInfoPageParams({
    required this.priceEditingController,
    required this.nicotineEditingController,
    required this.vapeNameEditingController,
    required this.vapeTotalPuffLimitController,
    required this.priceFocusNode,
    required this.nicotineFocusNode,
    required this.vapeNameFocusNode,
    required this.vapeTotalPuffLimitFocusNode,
  });

  final TextEditingController priceEditingController;
  final TextEditingController nicotineEditingController;
  final TextEditingController vapeNameEditingController;
  final TextEditingController vapeTotalPuffLimitController;
  final FocusNode priceFocusNode;
  final FocusNode nicotineFocusNode;
  final FocusNode vapeNameFocusNode;
  final FocusNode vapeTotalPuffLimitFocusNode;
}
