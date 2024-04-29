import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../product/data_objects/params/pagination_params.dart';
import '../../data/models/rating_model.dart';
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
    on<WeeklyRatingEvent>(_weeklyRatingHandler);
    on<MonthlyRatingEvent>(_monthlyRatingHandler);
    on<YearlyRatingEvent>(_yearlyRatingHandler);
  }

  final GetWeeklyRating _getWeeklyRating;
  final GetMonthlyRating _getMonthlyRating;
  final GetYearlyRating _getYearlyRating;

  Future<void> _weeklyRatingHandler(
    WeeklyRatingEvent event,
    Emitter<RatingState> emit,
  ) async {
    final result = await _getWeeklyRating(event.params);
    result.fold(
      (failure) => emit(RatingErrorState(failure.message ?? 'Error occurred')),
      (data) => emit(WeeklyRatingLoadedState(data)),
    );
  }

  Future<void> _monthlyRatingHandler(
    MonthlyRatingEvent event,
    Emitter<RatingState> emit,
  ) async {
    final result = await _getMonthlyRating(event.params);
    result.fold(
      (failure) => emit(RatingErrorState(failure.message ?? 'Error occurred')),
      (data) => emit(MonthlyRatingLoadedState(data)),
    );
  }

  Future<void> _yearlyRatingHandler(
    YearlyRatingEvent event,
    Emitter<RatingState> emit,
  ) async {
    final result = await _getYearlyRating(event.params);
    result.fold(
      (failure) => emit(RatingErrorState(failure.message ?? 'Error occurred')),
      (data) => emit(YearlyRatingLoadedState(data)),
    );
  }
}
