import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BaseStateless extends StatelessWidget {
  const BaseStateless({
    required this.assetPath,
    this.width,
    this.height,
    this.repeat,
    this.animate,
    this.controller,
    this.errorBuilder,
    this.onLoaded,
    super.key,
  });

  final String assetPath;
  final double? width;
  final double? height;
  final bool? repeat;
  final bool? animate;
  final Animation<double>? controller;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;
  final void Function(LottieComposition)? onLoaded;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      assetPath,
      width: width,
      height: height,
      repeat: repeat,
      animate: animate,
      errorBuilder: errorBuilder,
      controller: controller,
      onLoaded: onLoaded,
    );
  }
}
