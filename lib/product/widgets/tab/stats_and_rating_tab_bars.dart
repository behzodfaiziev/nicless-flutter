import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../product/enums/views/statistics_tabs_enum.dart';
import '../../../../product/utils/constants/ui_constants/radius_const.dart';
import '../../../core/widgets/tab/base_tab_bar_item.dart';
import '../../utils/constants/ui_constants/padding_const.dart';

class StatsAndRatingTabBars extends StatefulWidget {
  const StatsAndRatingTabBars({required this.tabController, super.key});

  final TabController tabController;

  @override
  State<StatsAndRatingTabBars> createState() => _StatsAndRatingTabBarsState();
}

class _StatsAndRatingTabBarsState extends State<StatsAndRatingTabBars> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: RadiusConst.bigRadius,
      child: Container(
        height: 40,
        margin: PaddingConst.horizontal20,
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
          tabs: [
            BaseTabBarItem(
              text: 'Weekly',
              isSelected: currentIndex == StatisticsTabsEnum.weekly.index,
            ),
            BaseTabBarItem(
              text: 'Monthly',
              isSelected: currentIndex == StatisticsTabsEnum.monthly.index,
            ),
            BaseTabBarItem(
              text: 'Yearly',
              isSelected: currentIndex == StatisticsTabsEnum.yearly.index,
            ),
          ],
        ),
      ),
    );
  }
}
