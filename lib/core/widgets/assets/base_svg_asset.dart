import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../extensions/context_extension.dart';

class BaseSvgAsset extends StatelessWidget {
  const BaseSvgAsset({
    required this.asset,
    this.color,
    this.height,
    this.width,
    this.shouldSetColor = true,
    super.key,
  });

  final String asset;
  final double? height;
  final double? width;
  final Color? color;
  final bool shouldSetColor;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      height: height,
      width: width,
      colorFilter: shouldSetColor
          ? ColorFilter.mode(
              color ?? context.theme.primaryIconTheme.color!,
              BlendMode.srcIn,
            )
          : null,
    );
  }
}
