part of 'rating_bloc.dart';

sealed class RatingState extends Equatable {
  const RatingState();
}

final class RatingInitial extends RatingState {
  @override
  List<Object> get props => [];
}
