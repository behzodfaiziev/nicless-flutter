import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../core/widgets/buttons/base_svg_button.dart';
import '../../../../product/utils/constants/asset_paths/svg_const.dart';
import '../../../../product/utils/constants/ui_constants/padding_const.dart';

part 'ranking_view_mixin.dart';

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
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Ranking',
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
      body: const Column(
        children: [],
      ),
    );
  }
}
