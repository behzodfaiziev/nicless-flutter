import 'package:flutter/cupertino.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../product/utils/constants/ui_constants/size_const.dart';

class BaseOutlinedTextButton extends StatelessWidget {
  const BaseOutlinedTextButton({
    required this.text,
    this.onPressed,
    this.isUnderline = true,
    this.fontSize,
    this.fontColor,
    this.fontStyle,
    this.fontWeight,
    this.boxHeight,
    this.underlineColor,
    super.key,
  });

  final void Function()? onPressed;
  final String text;
  final bool isUnderline;
  final double? fontSize;
  final double? boxHeight;
  final Color? fontColor;
  final Color? underlineColor;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (boxHeight ?? SizeConst.outlinedTextButtonMediumHeight) +
          (fontSize == null ? 0 : fontSize! / 2),
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Text(
          text,
          style: context.theme.textTheme.labelLarge!.copyWith(
              color: fontColor,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontWeight: fontWeight,
              decoration:
                  isUnderline ? TextDecoration.underline : TextDecoration.none,
              decorationColor: underlineColor ?? context.theme.primaryColor,),
        ),
      ),
    );
  }
}
