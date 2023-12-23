import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../product/utils/constants/ui_constants/radius_const.dart';
import 'statistics_tab_bar_item.dart';

class StatisticsTabBars extends StatelessWidget {
  const StatisticsTabBars({required this.tabController, super.key});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: RadiusConst.extraLargeRadius,
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.primary,
          borderRadius: RadiusConst.extraLargeRadius,
        ),
        child: TabBar(
          indicatorColor: Colors.transparent,
          dividerColor: Colors.transparent,
          controller: tabController,
          padding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: false,
          tabs: const [
            StatisticsTabBarItem(text: 'Weekly', isSelected: true),
            StatisticsTabBarItem(text: 'Monthly', isSelected: false),
            StatisticsTabBarItem(text: 'Yearly', isSelected: false),
          ],
        ),
      ),
    );
  }
}
