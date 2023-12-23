import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../product/enums/views/statistics_tabs_enum.dart';
import '../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../product/utils/constants/ui_constants/radius_const.dart';
import 'modules/tab_bars/statistics_tab_bars.dart';

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
      appBar: const BaseAppBar(title: 'Statistics'),
      body: Column(
        children: [
          StatisticsTabBars(tabController: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 160,
                      margin: PaddingConst.vertical20 + PaddingConst.top20,
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.primary,
                        borderRadius: RadiusConst.largestRadius,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 160,
                      margin: PaddingConst.vertical20,
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.primary,
                        borderRadius: RadiusConst.largestRadius,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 160,
                      margin: PaddingConst.vertical20,
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.primary,
                        borderRadius: RadiusConst.largestRadius,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
