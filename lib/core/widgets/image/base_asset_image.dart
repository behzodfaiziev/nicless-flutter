import 'package:flutter/material.dart';

class BaseAssetImage extends StatelessWidget {
  const BaseAssetImage(
    this.assetPath, {
    this.fit,
    this.semanticLabel,
    this.width,
    this.height,
    super.key,
    this.errorBuilder,
  });

  final String assetPath;
  final String? semanticLabel;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      fit: fit,
      width: width,
      height: height,
      semanticLabel: semanticLabel,
      errorBuilder: errorBuilder,
    );
  }
}
