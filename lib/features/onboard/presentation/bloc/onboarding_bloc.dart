import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../domain/use_cases/connect_bluetooth_device.dart';
import '../../domain/use_cases/get_bluetooth_devices.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc({
    required GetBluetoothDevices getBluetoothDevices,
    required ConnectBluetoothDevice connectBluetoothDevice,
  })  : _getBluetoothDevices = getBluetoothDevices,
        _connectBluetoothDevice = connectBluetoothDevice,
        super(OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {});
    on<GetBluetoothDevicesEvent>(_getBluetoothDevicesHandler);
    on<ConnectToDeviceEvent>(_connectToDeviceHandler);
  }

  final GetBluetoothDevices _getBluetoothDevices;
  final ConnectBluetoothDevice _connectBluetoothDevice;

  Future<void> _getBluetoothDevicesHandler(
      OnboardingEvent event, Emitter<OnboardingState> emit) async {
    emit(OnboardingLoading());
    final result = await _getBluetoothDevices();

    result.fold(
      (failure) {},
      (result) {
        emit(BluetoothDevicesFetched(devices: result));
      },
    );
  }

  Future<void> _connectToDeviceHandler(
      ConnectToDeviceEvent event, Emitter<OnboardingState> emit) async {
    emit(OnboardingLoading());
    final result = await _connectBluetoothDevice(event.device);

    result.fold(
      (failure) {
        // _getBluetoothDevicesHandler(event, emit);
      },
      (result) {
print('result _connectToDeviceHandler: $result');
        emit(const BluetoothDeviceConnected());
      },
    );
  }
}
