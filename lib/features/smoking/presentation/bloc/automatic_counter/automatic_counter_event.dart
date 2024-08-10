part of 'automatic_counter_bloc.dart';

abstract class AutomaticCounterEvent extends Equatable {
  const AutomaticCounterEvent();

  @override
  List<Object> get props => [];
}

class StartAutomaticCounterEvent extends AutomaticCounterEvent {
  const StartAutomaticCounterEvent();
}

class AddPuffEvent extends AutomaticCounterEvent {
  const AddPuffEvent();
}

class AddInhalingEvent extends AutomaticCounterEvent {
  const AddInhalingEvent();
}

final class SaveDailySmokingEvent extends AutomaticCounterEvent {
  const SaveDailySmokingEvent({
    required this.smokingId,
  });

  final String smokingId;

  @override
  List<Object> get props => [smokingId];
}

final class UpdateDurationEvent extends AutomaticCounterEvent {
  const UpdateDurationEvent();
}
