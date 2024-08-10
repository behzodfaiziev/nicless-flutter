part of 'automatic_counter_bloc.dart';

abstract class AutomaticCounterState extends Equatable {
  const AutomaticCounterState();

  @override
  List<Object?> get props => [];
}

final class AutomaticCounterInitial extends AutomaticCounterState {}

final class AutomaticCounterLoading extends AutomaticCounterState {
  const AutomaticCounterLoading();
}

final class AutomaticCounterStarted extends AutomaticCounterState {
  const AutomaticCounterStarted();
}

final class TotalPuffsAdded extends AutomaticCounterState {
  const TotalPuffsAdded({required this.amount, required this.message});

  final int amount;
  final String message;

  @override
  List<Object> get props => [amount];
}

final class TotalInhaledSeconds extends AutomaticCounterState {
  const TotalInhaledSeconds(this.seconds);

  final int seconds;

  @override
  List<Object> get props => [seconds];
}

final class SaveDailySmokingSuccess extends AutomaticCounterState {
  const SaveDailySmokingSuccess();
}

final class SaveDailySmokingFailure extends AutomaticCounterState {
  const SaveDailySmokingFailure({required this.message});

  final String? message;

  @override
  List<Object?> get props => [message];
}

final class ConsumingDurationState extends AutomaticCounterState {
  const ConsumingDurationState(this.duration);

  final int duration;

  @override
  List<Object> get props => [duration];
}
