import 'dart:async';

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
    on<StartAutomaticCounterEvent>(startAutomaticCounter);
  }

  void startAutomaticCounter(
      StartAutomaticCounterEvent event, Emitter<AutomaticCounterState> emit) {
    emit(const AutomaticCounterStarted());
  }

  Stream<bool>? getVapeStreamSubscription(
      BluetoothConnection bluetoothConnection) {
    final Stream<bool>? vapeStream = bluetoothConnection.input
        ?.transform(UInt8ListToStringTransformer())
        .transform(StringToBoolTransformer());

    if (vapeStream != null) {
      return vapeStream;
    }
    return null;
  }
}
