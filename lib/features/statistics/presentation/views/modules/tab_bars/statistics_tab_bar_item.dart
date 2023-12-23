import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../product/utils/constants/ui_constants/radius_const.dart';

class StatisticsTabBarItem extends StatelessWidget {
  const StatisticsTabBarItem({
    required this.text,
    required this.isSelected,
    super.key,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: RadiusConst.extraLargeRadius,
          ),
          child: Text(text, style: context.theme.tabBarTheme.labelStyle)),
    );
  }
}
