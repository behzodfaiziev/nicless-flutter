import 'package:flutter/material.dart';

import '../../../product/utils/constants/ui_constants/size_const.dart';
import '../../extensions/context_extension.dart';
import '../assets/base_svg_asset.dart';
import 'base_icon_button.dart';

class BaseSVGButton extends StatelessWidget {
  const BaseSVGButton({
    required this.asset,
    required this.onPressed,
    this.size,
    this.color,
    super.key,
  });

  final String asset;
  final double? size;
  final Color? color;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return BaseIconButton(
      onPressed: onPressed,
      pressedOpacity: 0.3,
      height: size ?? SizeConst.largestIconSize,
      child: BaseSvgAsset(
        asset: asset,
        color: color ?? context.theme.colorScheme.secondary,
      ),
    );
  }
}
