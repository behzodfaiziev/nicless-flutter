import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../../core/managers/bluetooth/transform/string_to_bool_transformer.dart';
import '../../../../../core/managers/bluetooth/transform/uint8_list_to_string_transformer.dart';

part 'automatic_counter_event.dart';

part 'automatic_counter_state.dart';

class AutomaticCounterBloc
    extends Bloc<AutomaticCounterEvent, AutomaticCounterState> {
  AutomaticCounterBloc() : super(AutomaticCounterInitial()) {
    on<AutomaticCounterEvent>((event, emit) {});
    on<StartAutomaticCounterEvent>(_startAutomaticCounterHandler);
    on<AddPuffEvent>(_addPuffHandler);
    on<AddInhalingEvent>(_addInhalingHandler);
  }

  void _startAutomaticCounterHandler(
      StartAutomaticCounterEvent event, Emitter<AutomaticCounterState> emit) {
    emit(const AutomaticCounterStarted());
  }

  /// A stream of booleans that indicates whether the user is inhaling or not.
  Stream<bool>? vapeStream;

  /// total amount of puffs
  int amountOfPuffs = 0;

  /// total seconds inhaled
  int secondsInhaled = 0;

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
    'Short path to a smoke-free, vibrant life.'
  ];

  Stream<bool>? getVapeStreamSubscription(
      BluetoothConnection bluetoothConnection) {
    vapeStream = bluetoothConnection.input
        ?.transform(UInt8ListToStringTransformer())
        .transform(StringToBoolTransformer());

    if (vapeStream != null) {
      return vapeStream;
    }
    return null;
  }

  void _addPuffHandler(
      AddPuffEvent event, Emitter<AutomaticCounterState> emit) {
    amountOfPuffs++;
    final randomIndex =
       Random.secure().nextInt(motivationalMessages.length);
    emit(TotalPuffsAdded(
        amount: amountOfPuffs, message: motivationalMessages[randomIndex]));
  }

  void _addInhalingHandler(
      AddInhalingEvent event, Emitter<AutomaticCounterState> emit) {
    secondsInhaled++;
    emit(TotalInhaledSeconds(secondsInhaled));
  }
}
