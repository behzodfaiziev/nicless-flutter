import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/text_fields/base_text_form_field.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';

class SmokingInfoPage extends StatelessWidget {
  const SmokingInfoPage({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextField(
                  focusNode: FocusNode(),
                  hintText: 'What is the price of your device (in USD)',
                  keyboardType: TextInputType.number,
                  textEditingController: TextEditingController(),
                ),
                buildTextField(
                  focusNode: FocusNode(),
                  hintText: 'What is capacity of your device',
                  keyboardType: TextInputType.number,
                  textEditingController: TextEditingController(),
                ),
                buildTextField(
                  focusNode: FocusNode(),
                  hintText: 'What is the nicotine percentage in 100 ml',
                  keyboardType: TextInputType.number,
                  textEditingController: TextEditingController(),
                ),
                buildTextField(
                  focusNode: FocusNode(),
                  hintText: "Vape's name (optional)",
                  keyboardType: TextInputType.text,
                  textEditingController: TextEditingController(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildTextField({
    required String hintText,
    required TextEditingController textEditingController,
    required FocusNode focusNode,
    required TextInputType keyboardType,
  }) {
    return Padding(
      padding: PaddingConst.vertical8,
      child: BaseTextField(
        keyboardType: keyboardType,
        hintText: hintText,
        textEditingController: textEditingController,
        focusNode: focusNode,
      ),
    );
  }
}
