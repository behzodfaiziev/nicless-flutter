part of 'automatic_counter_bloc.dart';

abstract class AutomaticCounterState extends Equatable {
  const AutomaticCounterState();
}

class AutomaticCounterInitial extends AutomaticCounterState {
  @override
  List<Object> get props => [];
}
