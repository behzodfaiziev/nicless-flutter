part of 'rating_view.dart';

mixin RatingMixin on State<RatingView> {
  late final TabController _tabController;
  late final RatingBloc _ratingBloc;

  @override
  void dispose() {
    _ratingBloc.close();
    _tabController.dispose();
    super.dispose();
  }
}
