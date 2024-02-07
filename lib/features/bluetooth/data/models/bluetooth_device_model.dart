import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothDeviceModel extends BluetoothDevice {
  const BluetoothDeviceModel({
    required super.address,
    super.name,
    super.isConnected,
    super.bondState,
  });

  Map<String, dynamic> toJson() {
    return {
      'bl.address': address,
      'bl.name': name,
      'bl.bondState': bondState,
    };
  }
}
