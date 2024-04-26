part of 'ranking_view.dart';

mixin StatisticsMixin on State<StatisticsView> {
  late final TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
