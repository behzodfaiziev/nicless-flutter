part of 'bluetooth_bloc.dart';

abstract class BluetoothEvent extends Equatable {
  const BluetoothEvent();

  @override
  List<Object> get props => [];
}

class BluetoothStarted extends BluetoothEvent {}

class BluetoothStopped extends BluetoothEvent {}

class BluetoothDeviceFound extends BluetoothEvent {
  const BluetoothDeviceFound(this.device);

  final BluetoothDeviceModel device;

  @override
  List<Object> get props => [device];
}

class GetBluetoothDevicesEvent extends BluetoothEvent {}

class ConnectBluetoothDeviceEvent extends BluetoothEvent {
  const ConnectBluetoothDeviceEvent({required this.device});

  final BluetoothDeviceModel device;

  @override
  List<Object> get props => [device];
}

class BluetoothDisconnectEvent extends BluetoothEvent {
  const BluetoothDisconnectEvent({
    required this.device,
    required this.connection,
  });

  final BluetoothDeviceModel device;
  final BluetoothConnection connection;

  @override
  List<Object> get props => [device, connection];
}

/// BluetoothDeviceDataSent is a state that is emitted  when
/// the device sends data to the connected device.
class SendDataToBluetoothDeviceEvent extends BluetoothEvent {
  const SendDataToBluetoothDeviceEvent(this.data);

  final String data;

  @override
  List<Object> get props => [data];
}
