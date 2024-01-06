import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../core/widgets/buttons/base_svg_button.dart';
import '../../../../product/enums/views/statistics_tabs_enum.dart';
import '../../../../product/utils/constants/asset_paths/svg_const.dart';
import '../../../../product/utils/constants/ui_constants/padding_const.dart';
import 'modules/tab_bars/statistics_tab_bars.dart';
import 'modules/tabs/monthly_stats_tab.dart';
import 'modules/tabs/weekly_stats_tab.dart';
import 'modules/tabs/yearly_stats_tab.dart';

part 'statistics_view_mixin.dart';

@RoutePage()
class StatisticsView extends StatefulWidget {
  const StatisticsView({super.key});

  @override
  State<StatisticsView> createState() => _StatisticsViewState();
}

class _StatisticsViewState extends State<StatisticsView>
    with StatisticsMixin, SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(() {
        if (_tabController.indexIsChanging == true) {
          switchTab(StatisticsTabsEnum.values[_tabController.index]);
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Statistics',
        actions: [
          Padding(
            padding: PaddingConst.right12,
            child: BaseSVGButton(
              asset: SVGConst.instance.share,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: PaddingConst.top12,
            child: StatisticsTabBars(tabController: _tabController),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                WeeklyStatsBar(),
                MonthlyStatsTab(),
                YearlyStatsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
