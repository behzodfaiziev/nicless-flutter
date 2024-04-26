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
              mainAxisAlignment: MainAxisAlignment.end,),
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
                  hintText: 'What is the price of your device (in USD)',
                  keyboardType: TextInputType.number,
                  textEditingController: params.priceEditingController,
                  onSubmitted: (value) {
                    params.priceFocusNode.unfocus();
                    params.capacityFocusNode.requestFocus();
                  },
                ),
                buildTextField(
                  focusNode: params.capacityFocusNode,
                  hintText: 'What is capacity of your device',
                  keyboardType: TextInputType.number,
                  textEditingController: params.capacityEditingController,
                  onSubmitted: (value) {
                    params.capacityFocusNode.unfocus();
                    params.nicotineFocusNode.requestFocus();
                  },
                ),
                buildTextField(
                  focusNode: params.nicotineFocusNode,
                  hintText: 'What is the nicotine percentage in 100 ml',
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
                                      hasBluetooth: value ?? false,),
                                );
                          },
                        );
                      },
                    ),
                    Text('My smoking device has bluetooth',
                        style: context.primaryTextTheme.titleSmall,),
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
      padding: PaddingConst.vertical8,
      child: BaseTextField(
        keyboardType: keyboardType,
        hintText: hintText,
        textEditingController: textEditingController,
        focusNode: focusNode,
        onSubmitted: onSubmitted,
      ),
    );
  }
}

class SmokingInfoPageParams {
  SmokingInfoPageParams({
    required this.priceEditingController,
    required this.capacityEditingController,
    required this.nicotineEditingController,
    required this.vapeNameEditingController,
    required this.priceFocusNode,
    required this.capacityFocusNode,
    required this.nicotineFocusNode,
    required this.vapeNameFocusNode,
  });

  final TextEditingController priceEditingController;
  final TextEditingController capacityEditingController;
  final TextEditingController nicotineEditingController;
  final TextEditingController vapeNameEditingController;
  final FocusNode priceFocusNode;
  final FocusNode capacityFocusNode;
  final FocusNode nicotineFocusNode;
  final FocusNode vapeNameFocusNode;
}
