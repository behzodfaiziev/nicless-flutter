part of 'automatic_counter_bloc.dart';

abstract class AutomaticCounterState extends Equatable {
  const AutomaticCounterState();

  @override
  List<Object> get props => [];
}

class AutomaticCounterInitial extends AutomaticCounterState {}

class AutomaticCounterStarted extends AutomaticCounterState {
  const AutomaticCounterStarted();
}

class TotalPuffsAdded extends AutomaticCounterState {
  const TotalPuffsAdded({required this.amount, required this.message});

  final int amount;
  final String message;

  @override
  List<Object> get props => [amount];
}

class TotalInhaledSeconds extends AutomaticCounterState {
  const TotalInhaledSeconds(this.seconds);

  final int seconds;

  @override
  List<Object> get props => [seconds];
}
