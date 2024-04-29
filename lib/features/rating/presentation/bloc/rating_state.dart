part of 'rating_bloc.dart';

sealed class RatingState extends Equatable {
  const RatingState();

  @override
  List<Object> get props => [];
}

final class RatingInitial extends RatingState {}

final class RatingErrorState extends RatingState {
  const RatingErrorState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

final class WeeklyRatingLoadedState extends RatingState {
  const WeeklyRatingLoadedState(this.data);

  final List<RatingModel> data;

  @override
  List<Object> get props => [data];
}

final class MonthlyRatingLoadedState extends RatingState {
  const MonthlyRatingLoadedState(this.data);

  final List<RatingModel> data;

  @override
  List<Object> get props => [data];
}

final class YearlyRatingLoadedState extends RatingState {
  const YearlyRatingLoadedState(this.data);

  final List<RatingModel> data;

  @override
  List<Object> get props => [data];
}