import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/get_monthly_rating.dart';
import '../../domain/use_cases/get_weekly_rating.dart';
import '../../domain/use_cases/get_yearly_rating.dart';

part 'rating_event.dart';

part 'rating_state.dart';

class RatingBloc extends Bloc<RatingEvent, RatingState> {
  RatingBloc({
    required GetWeeklyRating getWeeklyRating,
    required GetMonthlyRating getMonthlyRating,
    required GetYearlyRating getYearlyRating,
  })  : _getWeeklyRating = getWeeklyRating,
        _getMonthlyRating = getMonthlyRating,
        _getYearlyRating = getYearlyRating,
        super(RatingInitial()) {
    on<RatingEvent>((event, emit) {});
  }

  final GetWeeklyRating _getWeeklyRating;
  final GetMonthlyRating _getMonthlyRating;
  final GetYearlyRating _getYearlyRating;
}
