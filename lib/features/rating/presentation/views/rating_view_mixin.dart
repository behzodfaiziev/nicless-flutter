part of 'rating_view.dart';

mixin RatingMixin on State<RatingView> {
  late final TabController _tabController;
  late final RatingBloc _ratingBloc;

  void init() {
    _ratingBloc = sl<RatingBloc>();
    _ratingBloc.add(const WeeklyRatingEvent(PaginationParams(page: 1)));
    _tabController.addListener(() {
      _ratingBloc.add(
        _tabController.index == 0
            ? const WeeklyRatingEvent(PaginationParams(page: 1))
            : _tabController.index == 1
                ? const MonthlyRatingEvent(PaginationParams(page: 1))
                : const YearlyRatingEvent(PaginationParams(page: 1)),
      );
    });
  }

  @override
  void dispose() {
    _ratingBloc.close();
    _tabController.dispose();
    super.dispose();
  }
}
