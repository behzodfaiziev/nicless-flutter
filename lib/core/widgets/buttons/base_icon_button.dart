import 'package:flutter/cupertino.dart';

class BaseIconButton extends StatelessWidget {
  const BaseIconButton({
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.borderRadius,
    this.height,
    this.padding = EdgeInsets.zero,
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
    return Container(
      height: height,
      width: height,
      alignment: alignment,
      child: CupertinoButton(
        onPressed: onPressed,
        padding: padding,
        minSize: height,
        pressedOpacity: pressedOpacity,
        borderRadius: borderRadius,
        color: backgroundColor,
        child: child,
      ),
    );
  }
}
