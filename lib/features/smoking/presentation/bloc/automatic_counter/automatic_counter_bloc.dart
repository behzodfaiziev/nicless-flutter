import 'dart:async';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../../core/managers/bluetooth/transform/string_to_bool_transformer.dart';
import '../../../../../core/managers/bluetooth/transform/uint8_list_to_string_transformer.dart';
import '../../../data/model/daily_smoking_model.dart';
import '../../../domain/use_cases/save_daily_smoking.dart';

part 'automatic_counter_event.dart';
part 'automatic_counter_state.dart';

class AutomaticCounterBloc
    extends Bloc<AutomaticCounterEvent, AutomaticCounterState> {
  AutomaticCounterBloc({
    required SaveDailySmoking saveDailySmoking,
  })  : _saveDailySmoking = saveDailySmoking,
        super(AutomaticCounterInitial()) {
    on<AutomaticCounterEvent>((event, emit) {});
    on<StartAutomaticCounterEvent>(_startAutomaticCounterHandler);
    on<AddPuffEvent>(_addPuffHandler);
    on<AddInhalingEvent>(_addInhalingHandler);
    on<SaveDailySmokingEvent>(_saveDailySmokingHandler);
    on<UpdateDurationEvent>(_updateDurationHandler);
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }

  final SaveDailySmoking _saveDailySmoking;

  void _startAutomaticCounterHandler(
    StartAutomaticCounterEvent event,
    Emitter<AutomaticCounterState> emit,
  ) {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        add(const UpdateDurationEvent());
      },
    );
    emit(const AutomaticCounterStarted());
  }

  /// A stream of booleans that indicates whether the user is inhaling or not.
  Stream<bool>? _vapeStream;

  /// total amount of puffs
  int _amountOfPuffs = 0;

  /// total seconds inhaled
  int _secondsInhaled = 0;

  int _consumingDuration = 0;

  late Timer _timer;

  List<String> motivationalMessages = [
    'Celebrate health, one smoke-free day at a time!',
    'Breathe in a smoke-free life; exhale victories!',
    'Quit smoking, build a lifetime of well-being.',
    'Break free, savor the freedom of a healthier you.',
    'Your future self thanks you for choosing health.',
    'Count days of freedom, not smokes.',
    'Celebrate each smoke-free moment!',
    'Every choice for health is a step forward.',
    'Choose a smoke-free, happier life.',
    'Invest in a healthier future, one day at a time.',
    'Trade smoke for smiles, celebrate triumphs!',
    'Embrace a path to a healthier you.',
    'Health is your greatest asset; protect it.',
    'Break the cycle, wear your health badge.',
    'Celebrate victories on the journey to thriving.',
    'Each smoke-free day is a gift to yourself.',
    'Powerful investment: quit smoking, live well.',
    'Triumph over smoke, embrace vitality.',
    'Commit to health, shape a better tomorrow.',
    'Short path to a smoke-free, vibrant life.',
  ];

  Stream<bool>? getVapeStreamSubscription(
    BluetoothConnection bluetoothConnection,
  ) {
    _vapeStream = bluetoothConnection.input
        ?.transform(UInt8ListToStringTransformer())
        .transform(StringToBoolTransformer());

    if (_vapeStream != null) {
      return _vapeStream;
    }
    return null;
  }

  void _addPuffHandler(
    AddPuffEvent event,
    Emitter<AutomaticCounterState> emit,
  ) {
    _amountOfPuffs++;
    final randomIndex = Random.secure().nextInt(motivationalMessages.length);
    emit(
      TotalPuffsAdded(
        amount: _amountOfPuffs,
        message: motivationalMessages[randomIndex],
      ),
    );
  }

  void _addInhalingHandler(
    AddInhalingEvent event,
    Emitter<AutomaticCounterState> emit,
  ) {
    _secondsInhaled++;
    emit(TotalInhaledSeconds(_secondsInhaled));
  }

  Future<void> _saveDailySmokingHandler(
    SaveDailySmokingEvent event,
    Emitter<AutomaticCounterState> emit,
  ) async {
    emit(const AutomaticCounterLoading());
    final result = await _saveDailySmoking(
      DailySmokingModel(
        seconds: _consumingDuration,
        increasedCount: _amountOfPuffs,
        smokingId: event.smokingId,
      ),
    );
    result.fold(
      (error) => emit(SaveDailySmokingFailure(message: error.message)),
      (success) => emit(const SaveDailySmokingSuccess()),
    );
  }

  Future<void> _updateDurationHandler(
    UpdateDurationEvent event,
    Emitter<AutomaticCounterState> emit,
  ) async {
    _consumingDuration++;
    emit(ConsumingDurationState(_consumingDuration));
  }
}
