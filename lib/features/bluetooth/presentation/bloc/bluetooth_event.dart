part of 'bluetooth_bloc.dart';

abstract class BluetoothEvent extends Equatable {
  const BluetoothEvent();

  @override
  List<Object> get props => [];
}

class BluetoothStarted extends BluetoothEvent {}

class BluetoothStopped extends BluetoothEvent {}

class BluetoothDeviceFound extends BluetoothEvent {
  final BluetoothDeviceModel device;

  const BluetoothDeviceFound(this.device);

  @override
  List<Object> get props => [device];
}

class GetBluetoothDevicesEvent extends BluetoothEvent {}

class ConnectBluetoothDeviceEvent extends BluetoothEvent {
  final BluetoothDeviceModel device;

  const ConnectBluetoothDeviceEvent({required this.device});

  @override
  List<Object> get props => [device];
}

class BluetoothDisconnectEvent extends BluetoothEvent {
  final BluetoothDeviceModel device;
  final BluetoothConnection connection;

  const BluetoothDisconnectEvent(
      {required this.device, required this.connection});

  @override
  List<Object> get props => [device, connection];
}

/// BluetoothDeviceDataSent is a state that is emitted  when
/// the device sends data to the connected device.
class SendDataToBluetoothDeviceEvent extends BluetoothEvent {
  final String data;

  const SendDataToBluetoothDeviceEvent(this.data);

  @override
  List<Object> get props => [data];
}
