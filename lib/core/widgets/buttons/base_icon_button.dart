import 'package:flutter/cupertino.dart';

class BaseIconButton extends StatelessWidget {
  const BaseIconButton({
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.borderRadius,
    this.height,
    this.padding,
    this.alignment = Alignment.center,
    this.pressedOpacity,
    super.key,
  });

  final Widget child;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final double? height;
  final EdgeInsets? padding;
  final AlignmentGeometry alignment;
  final double? pressedOpacity;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: padding,
      pressedOpacity: pressedOpacity,
      borderRadius: borderRadius,
      color: backgroundColor,
      alignment: alignment,
      child: child,
    );
  }
}
