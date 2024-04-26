part of 'profile_view.dart';
mixin ProfileViewMixin on State<ProfileView>{
  late final TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  Future<bool> switchTab(StatisticsTabsEnum index) async {
    switch (index) {
      case StatisticsTabsEnum.weekly:
        return true;
      case StatisticsTabsEnum.monthly:
        return true;
      case StatisticsTabsEnum.yearly:
        return true;
      default:
        return false;
    }
  }

}