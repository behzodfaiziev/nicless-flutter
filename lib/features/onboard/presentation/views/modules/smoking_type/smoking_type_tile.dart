import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/image/base_asset_image.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/utils/constants/ui_constants/radius_const.dart';

class SmokingTypeTile extends StatelessWidget {
  const SmokingTypeTile({
    required this.onTap,
    required this.isSelected,
    required this.assetPath,
    required this.smokingName,
    super.key,
  });

  final void Function() onTap;
  final bool isSelected;
  final String assetPath;
  final String smokingName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: context.width * 0.35,
            width: context.width * 0.35,
            padding: PaddingConst.all20,
            decoration: buildBoxDecoration(context),
            child: Center(
              child: BaseAssetImage(assetPath),
            ),
          ),
          Padding(
            padding: PaddingConst.top8,
            child: Text(
              smokingName,
              style: context.primaryTextTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  Decoration buildBoxDecoration(BuildContext context) {
    return BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: RadiusConst.largerRadius,
        border: Border.all(
          color: isSelected
              ? context.colorScheme.onPrimary
              : context.theme.primaryColor,
          width: isSelected ? 0.6 : 0.3,
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSecondary.withOpacity(0.25),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ]);
  }
}
