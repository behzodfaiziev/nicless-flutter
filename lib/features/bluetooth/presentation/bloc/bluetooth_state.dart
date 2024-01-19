part of 'bluetooth_bloc.dart';

abstract class BluetoothState extends Equatable {
  const BluetoothState();

  @override
  List<Object> get props => [];
}

class BluetoothInitial extends BluetoothState {}

class BluetoothScanLoading extends BluetoothState {}

class ConnectingBluetoothDevice extends BluetoothState {}

class BluetoothDeviceConnected extends BluetoothState {
  final BluetoothConnection connection;
  final BluetoothDeviceModel device;

  const BluetoothDeviceConnected({
    required this.connection,
    required this.device,
  });

  @override
  List<Object> get props => [device, connection];
}

class BluetoothDeviceDisconnected extends BluetoothState {
  final BluetoothDeviceModel device;

  const BluetoothDeviceDisconnected(this.device);

  @override
  List<Object> get props => [device];
}

class BluetoothDeviceFailedToConnect extends BluetoothState {
  final BluetoothDeviceModel device;

  const BluetoothDeviceFailedToConnect(this.device);

  @override
  List<Object> get props => [device];
}

/// BluetoothDeviceDataReceived is a state that is emitted  when
/// the device receives data from the connected device.
class BluetoothDeviceDataReceived extends BluetoothState {
  final String data;

  const BluetoothDeviceDataReceived(this.data);

  @override
  List<Object> get props => [data];
}

class BluetoothDeviceScanTimeout extends BluetoothState {}

class BluetoothDeviceScanStarted extends BluetoothState {}

class BluetoothDeviceScanStopped extends BluetoothState {}

class BluetoothDeviceScanResult extends BluetoothState {
  final List<BluetoothDeviceModel> devices;

  const BluetoothDeviceScanResult({required this.devices});

  @override
  List<Object> get props => [devices];
}

class BluetoothDeviceScanFailed extends BluetoothState {
  final String error;

  const BluetoothDeviceScanFailed(this.error);

  @override
  List<Object> get props => [error];
}

class BluetoothDeviceScanCompleted extends BluetoothState {}
