import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../data/models/bluetooth_device_model.dart';
import '../../domain/use_cases/connect_bluetooth_device.dart';
import '../../domain/use_cases/get_bluetooth_devices.dart';

part 'bluetooth_event.dart';

part 'bluetooth_state.dart';

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothState> {
  BluetoothBloc({
    required GetBluetoothDevices getBluetoothDevices,
    required ConnectBluetoothDevice connectBluetoothDevice,
  })  : _getBluetoothDevices = getBluetoothDevices,
        _connectBluetoothDevice = connectBluetoothDevice,
        super(BluetoothInitial()) {
    on<BluetoothEvent>((event, emit) {});
    on<GetBluetoothDevicesEvent>(_getBluetoothDevicesHandler);
    on<ConnectBluetoothDeviceEvent>(_connectToDeviceHandler);
  }

  BluetoothConnection? _onDataReceived;

  BluetoothConnection? get onDataReceived => _onDataReceived;

  void disposeOnDataReceived() {
    _onDataReceived?.dispose();
    _onDataReceived = null;
  }

  final GetBluetoothDevices _getBluetoothDevices;
  final ConnectBluetoothDevice _connectBluetoothDevice;

  Future<void> _getBluetoothDevicesHandler(
      GetBluetoothDevicesEvent event, Emitter<BluetoothState> emit) async {
    emit(BluetoothScanLoading());
    final result = await _getBluetoothDevices();

    result.fold(
      (failure) {},
      (result) {
        emit(BluetoothDeviceScanResult(devices: result));
      },
    );
  }

  Future<void> _connectToDeviceHandler(
      ConnectBluetoothDeviceEvent event, Emitter<BluetoothState> emit) async {
    emit(ConnectingBluetoothDevice());
    final result = await _connectBluetoothDevice(event.device);

    result.fold(
      (failure) {
        // _getBluetoothDevicesHandler(event, emit);
      },
      (result) {
        _onDataReceived = result;
        emit(BluetoothDeviceConnected(event.device));
      },
    );
  }
}
