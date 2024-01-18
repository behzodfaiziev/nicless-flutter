import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/widgets/buttons/base_svg_button.dart';
import '../../utils/constants/asset_paths/svg_const.dart';
import '../../utils/constants/ui_constants/padding_const.dart';
import '../../utils/constants/ui_constants/radius_const.dart';

class BluetoothListTile extends StatelessWidget {
  const BluetoothListTile(
      {required this.title, required this.onPressed, super.key});

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: PaddingConst.vertical12 + context.mainHorizontalPadding,
        child: ListTile(
            onTap: onPressed,
            tileColor: context.colorScheme.primary,
            contentPadding: PaddingConst.vertical2 + PaddingConst.horizontal12,
            shape: RoundedRectangleBorder(
              borderRadius: RadiusConst.largeRadius,
              side: BorderSide(
                color: context.colorScheme.secondary.withOpacity(0.05),
                width: 1,
              ),
            ),
            leading: Icon(
              Icons.bluetooth,
              color: context.colorScheme.secondary,
            ),
            title: Text(title,
                style: context.primaryTextTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                )),
            trailing: BaseSVGButton(
              asset: SVGConst.instance.settings,
              color: context.colorScheme.secondary.withOpacity(0.6),
              size: 24,
              onPressed: () {},
            )),
      ),
    );
  }
}
