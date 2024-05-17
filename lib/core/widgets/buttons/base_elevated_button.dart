import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../product/utils/constants/ui_constants/radius_const.dart';
import '../../../product/utils/constants/ui_constants/size_const.dart';
import '../../init/config/app_config.dart';

class BaseElevatedButton extends StatelessWidget {
  const BaseElevatedButton({
    required this.child,
    this.backgroundColor,
    this.onPressed,
    this.borderRadius,
    this.height,
    this.setZeroPaddingForAndroid = false,
    this.padding,
    this.buttonElevation,
    super.key,
  }) : assert(setZeroPaddingForAndroid == false || padding == null,
            'Cannot provide both padding and setZeroPaddingForAndroid',);

  final void Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final double? height;
  final EdgeInsets? padding;
  final bool setZeroPaddingForAndroid;
  final double? buttonElevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? SizeConst.elevatedButtonMediumHeight,
      width: double.infinity,
      child: AppConfig.instance.isAndroid
          ? ElevatedButton(
              onPressed: onPressed,
              style: androidStyle(context),
              child: child,
            )
          : ClipRRect(
              borderRadius: borderRadius ?? RadiusConst.elevatedButton,
              child: ColoredBox(
                color: context.theme.scaffoldBackgroundColor,
                child: CupertinoButton(
                  onPressed: onPressed,
                  color: backgroundColor,
                  borderRadius: borderRadius ?? RadiusConst.elevatedButton,
                  padding: EdgeInsets.zero,
                  disabledColor: context.theme.disabledColor,
                  pressedOpacity: 0.8,
                  child: child,
                ),
              ),
            ),
    );
  }

  ButtonStyle? androidStyle(BuildContext context) {
    return context.theme.elevatedButtonTheme.style?.copyWith(
        elevation: buttonElevation != null
            ? WidgetStateProperty.all(buttonElevation)
            : null,
        padding: setZeroPaddingForAndroid
            ? const WidgetStatePropertyAll(EdgeInsets.zero)
            : WidgetStatePropertyAll(padding),
        minimumSize: WidgetStatePropertyAll(Size(
            SizeConst.elevatedButtonMinWidth,
            height ?? SizeConst.elevatedButtonBigHeight,),),
        maximumSize: WidgetStatePropertyAll(Size(
            SizeConst.elevatedButtonMinWidth,
            height ?? SizeConst.elevatedButtonBigHeight,),),
        backgroundColor: backgroundColor != null
            ? WidgetStatePropertyAll(backgroundColor)
            : context.theme.elevatedButtonTheme.style?.backgroundColor,
        shape: borderRadius != null
            ? WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: borderRadius!),)
            : context.theme.elevatedButtonTheme.style?.shape,);
  }
}
