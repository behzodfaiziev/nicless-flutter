part of 'rating_bloc.dart';

sealed class RatingEvent extends Equatable {
  const RatingEvent();
}

final class WeeklyRatingEvent extends RatingEvent {
  const WeeklyRatingEvent(this.params);

  final PaginationParams params;

  @override
  List<Object> get props => [params];
}

final class MonthlyRatingEvent extends RatingEvent {
  const MonthlyRatingEvent(this.params);

  final PaginationParams params;

  @override
  List<Object> get props => [params];
}

final class YearlyRatingEvent extends RatingEvent {
  const YearlyRatingEvent(this.params);

  final PaginationParams params;

  @override
  List<Object> get props => [params];
}
