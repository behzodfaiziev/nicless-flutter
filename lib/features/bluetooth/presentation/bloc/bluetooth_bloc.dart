import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../data/models/bluetooth_device_model.dart';
import '../../domain/use_cases/connect_bluetooth_device.dart';
import '../../domain/use_cases/disconnect_bluetooth_device.dart';
import '../../domain/use_cases/get_bluetooth_devices.dart';

part 'bluetooth_event.dart';

part 'bluetooth_state.dart';

class BluetoothBloc extends Bloc<BluetoothEvent, BluetoothState> {
  BluetoothBloc({
    required GetBluetoothDevices getBluetoothDevices,
    required ConnectBluetoothDevice connectBluetoothDevice,
    required DisconnectBluetoothDevice disconnectBluetoothDevice,
  })  : _getBluetoothDevices = getBluetoothDevices,
        _connectBluetoothDevice = connectBluetoothDevice,
        _disconnectBluetoothDevice = disconnectBluetoothDevice,
        super(BluetoothInitial()) {
    on<BluetoothEvent>((event, emit) {});
    on<GetBluetoothDevicesEvent>(_getBluetoothDevicesHandler);
    on<ConnectBluetoothDeviceEvent>(_connectToDeviceHandler);
    on<BluetoothDisconnectEvent>(_disconnectBluetoothDeviceHandler);
  }

  final GetBluetoothDevices _getBluetoothDevices;
  final ConnectBluetoothDevice _connectBluetoothDevice;
  final DisconnectBluetoothDevice _disconnectBluetoothDevice;

  BluetoothConnection? _onDataReceived;

  BluetoothConnection? get onDataReceived => _onDataReceived;

  void disposeOnDataReceived() {
    _onDataReceived?.dispose();
    _onDataReceived = null;
  }

  Future<void> _getBluetoothDevicesHandler(
      GetBluetoothDevicesEvent event, Emitter<BluetoothState> emit,) async {
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
      ConnectBluetoothDeviceEvent event, Emitter<BluetoothState> emit,) async {
    emit(ConnectingBluetoothDevice());
    final result = await _connectBluetoothDevice(event.device);

    result.fold(
      (failure) {
        emit(BluetoothDeviceFailedToConnect(event.device));
        // _getBluetoothDevicesHandler(event, emit);
      },
      (connection) {
        _onDataReceived = connection;
        emit(BluetoothDeviceConnected(
            connection: connection, device: event.device,),);
      },
    );
  }

  Future<void> _disconnectBluetoothDeviceHandler(
      BluetoothDisconnectEvent event, Emitter<BluetoothState> emit,) async {
    final result = await _disconnectBluetoothDevice(event.connection);
    result.fold(
      (failure) {
        emit(BluetoothDeviceFailedToDisconnect(event.connection, event.device));
      },
      (result) {
        disposeOnDataReceived();
        emit(const BluetoothDeviceDisconnected());
      },
    );
  }
}
