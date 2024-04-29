import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/buttons/base_svg_button.dart';
import '../../../../product/enums/views/statistics_tabs_enum.dart';
import '../../../../product/utils/constants/app/app_const.dart';
import '../../../../product/utils/constants/asset_paths/svg_const.dart';
import '../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../product/widgets/tab/stats_and_rating_tab_bars.dart';
import 'tab_bars/tabs/monthly_stats_tab.dart';
import 'tab_bars/tabs/weekly_stats_tab.dart';
import 'tab_bars/tabs/yearly_stats_tab.dart';

part 'profile_view_mixin.dart';

@RoutePage()
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with ProfileViewMixin, SingleTickerProviderStateMixin {
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
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          // Add this
          slivers: [
            SliverToBoxAdapter(child: buildTopAvatar(context)),
            SliverToBoxAdapter(child: nameNicknameText(context)),
            SliverToBoxAdapter(
              child: Padding(
                padding: PaddingConst.top12,
                child: StatsAndRatingTabBars(tabController: _tabController),
              ),
            ),
            SliverFillRemaining(
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
      ),
    );
  }

  Widget nameNicknameText(BuildContext context) {
    return Padding(
      padding: PaddingConst.vertical24,
      child: Column(
        children: [
          Text(
            AppConst.tempProfileName,
            style: context.textTheme.titleLarge,
          ),
          Text(
            AppConst.tempProfileNickname,
            style: context.textTheme.titleMedium?.copyWith(
              color: context.colorScheme.onSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTopAvatar(BuildContext context) {
    return Padding(
      padding: PaddingConst.top24,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(margin: context.mainHorizontalPaddingLeft, width: 30),
          Padding(
            padding: PaddingConst.top12,
            child: CircleAvatar(
              radius: context.width * 0.2,
              backgroundImage: const NetworkImage(AppConst.tempProfileUrl),
            ),
          ),
          Container(
            width: 30,
            margin: context.mainHorizontalPaddingRight,
            child: BaseSVGButton(
              asset: SVGConst.instance.settings,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
