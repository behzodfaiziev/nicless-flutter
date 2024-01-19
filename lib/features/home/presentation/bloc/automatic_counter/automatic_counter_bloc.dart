import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'automatic_counter_event.dart';

part 'automatic_counter_state.dart';

class AutomaticCounterBloc
    extends Bloc<AutomaticCounterEvent, AutomaticCounterState> {
  AutomaticCounterBloc() : super(AutomaticCounterInitial()) {
    on<AutomaticCounterEvent>((event, emit) {});
  }
}
