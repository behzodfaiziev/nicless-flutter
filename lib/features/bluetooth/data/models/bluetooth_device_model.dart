import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothDeviceModel extends BluetoothDevice {
  const BluetoothDeviceModel({
    required super.address,
    super.name,
    super.type,
    super.isConnected,
    super.bondState,
  });
}
