import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/text/base_mark_down.dart';
import '../../../../../product/theme/app_colors.dart';
import '../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../product/utils/constants/ui_constants/radius_const.dart';

class GeminiResponseText extends StatelessWidget {
  const GeminiResponseText({
    required this.text,
    required this.isQuestion,
    super.key,
  });

  final String text;
  final bool isQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingConst.vertical8 + PaddingConst.horizontal12,
      margin: PaddingConst.vertical8 +
          PaddingConst.horizontal20 +
          (isQuestion ? PaddingConst.right16 : EdgeInsets.zero) +
          (isQuestion ? EdgeInsets.zero : PaddingConst.left16),
      decoration: BoxDecoration(
        border: Border.all(color: context.theme.primaryColor),
        borderRadius: RadiusConst.circular12,
        color: isQuestion
            ? AppColors.cardTopRatingColor
            : AppColors.cardRatingColor,
      ),
      child: BaseMarkDown(text: text),
    );
  }
}
