part of 'bluetooth_bloc.dart';

abstract class BluetoothState extends Equatable {
  const BluetoothState();

  @override
  List<Object> get props => [];
}

class BluetoothInitial extends BluetoothState {}

class BluetoothScanLoading extends BluetoothState {}

class ConnectingBluetoothDeviceState extends BluetoothState {}

class BluetoothDeviceConnectedState extends BluetoothState {
  const BluetoothDeviceConnectedState({
    required this.connection,
    required this.device,
    required this.smokingId,
  });

  final BluetoothConnection connection;
  final BluetoothDeviceModel device;
  final String smokingId;

  @override
  List<Object> get props => [device, connection, smokingId];
}

class BluetoothDeviceDisconnected extends BluetoothState {
  const BluetoothDeviceDisconnected();
}

class BluetoothDeviceFailedToDisconnect extends BluetoothState {
  const BluetoothDeviceFailedToDisconnect(this.connection, this.device);

  final BluetoothConnection connection;
  final BluetoothDeviceModel device;

  @override
  List<Object> get props => [connection];
}

class BluetoothDeviceFailedToConnect extends BluetoothState {
  const BluetoothDeviceFailedToConnect(this.device);

  final BluetoothDeviceModel device;

  @override
  List<Object> get props => [device];
}

/// BluetoothDeviceDataReceived is a state that is emitted  when
/// the device receives data from the connected device.
class BluetoothDeviceDataReceived extends BluetoothState {
  const BluetoothDeviceDataReceived(this.data);

  final String data;

  @override
  List<Object> get props => [data];
}

class BluetoothDeviceScanTimeout extends BluetoothState {}

class BluetoothDeviceScanStarted extends BluetoothState {}

class BluetoothDeviceScanStopped extends BluetoothState {}

class BluetoothDeviceScanResult extends BluetoothState {
  const BluetoothDeviceScanResult({required this.devices});

  final List<BluetoothDeviceModel> devices;

  @override
  List<Object> get props => [devices];
}

class BluetoothDeviceScanFailed extends BluetoothState {
  const BluetoothDeviceScanFailed(this.error);

  final String error;

  @override
  List<Object> get props => [error];
}

class BluetoothDeviceScanCompleted extends BluetoothState {}
