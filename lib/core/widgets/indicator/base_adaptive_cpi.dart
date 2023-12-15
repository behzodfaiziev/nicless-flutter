import 'package:flutter/material.dart';

import '../../../product/utils/constants/ui_constants/size_const.dart';
import '../../extensions/context_extension.dart';

class BaseAdaptiveCPI extends StatelessWidget {
  const BaseAdaptiveCPI({
    this.strokeWidth,
    this.backgroundColor,
    this.value,
    this.valueColor,
    super.key,
  });

  final double? strokeWidth;
  final double? value;
  final Color? backgroundColor;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      valueColor: AlwaysStoppedAnimation<Color>(
        valueColor ?? context.colorScheme.primary,
      ),
      value: value,
      strokeWidth: strokeWidth ?? SizeConst.circularProgressIndicatorWidth,
      // backgroundColor: backgroundColor ?? AppColorScheme.instance.white,
    );
  }
}
