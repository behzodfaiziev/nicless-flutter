import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

abstract class IBluetoothManager {
  //Bluetooth
  FlutterBluetoothSerial? fls;
  BluetoothState bluetoothState = BluetoothState.UNKNOWN;
  String result = '';

  Future<BluetoothConnection> connectBl(String address);

  Future<void> disconnectBl(BluetoothConnection connection);

  Future<void> sendMessage(BluetoothConnection connection, String text);
}
