import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../product/enums/views/statistics_tabs_enum.dart';
import '../../../../../../product/utils/constants/ui_constants/radius_const.dart';
import 'statistics_tab_bar_item.dart';

class StatisticsTabBars extends StatefulWidget {
  const StatisticsTabBars({required this.tabController, super.key});

  final TabController tabController;

  @override
  State<StatisticsTabBars> createState() => _StatisticsTabBarsState();
}

class _StatisticsTabBarsState extends State<StatisticsTabBars> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: RadiusConst.bigRadius,
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.primary,
          borderRadius: RadiusConst.bigRadius,
        ),
        child: TabBar(
          indicatorColor: Colors.transparent,
          dividerColor: Colors.transparent,
          controller: widget.tabController,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          padding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: false,
          tabs: [
            StatisticsTabBarItem(
              text: 'Weekly',
              isSelected: currentIndex == StatisticsTabsEnum.weekly.index,
            ),
            StatisticsTabBarItem(
              text: 'Monthly',
              isSelected: currentIndex == StatisticsTabsEnum.monthly.index,
            ),
            StatisticsTabBarItem(
              text: 'Yearly',
              isSelected: currentIndex == StatisticsTabsEnum.yearly.index,
            ),
          ],
        ),
      ),
    );
  }
}
