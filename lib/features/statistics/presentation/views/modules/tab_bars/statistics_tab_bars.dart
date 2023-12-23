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
      borderRadius: RadiusConst.largeRadius,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.primary,
          borderRadius: RadiusConst.largeRadius,
        ),
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          isScrollable: false,
          labelPadding: const EdgeInsets.symmetric(horizontal: 10),
          indicatorSize: TabBarIndicatorSize.label,
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
