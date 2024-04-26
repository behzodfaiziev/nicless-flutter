part of 'rating_view.dart';

mixin RatingMixin on State<RatingView> {
  late final TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
