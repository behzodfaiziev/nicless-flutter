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
