import 'package:flutter/foundation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

abstract class IBluetoothManager {
  //Bluetooth
  FlutterBluetoothSerial? fls;
  BluetoothConnection? connection;
  BluetoothState bluetoothState = BluetoothState.UNKNOWN;
  String result = '';

  Future<void> connectBl(String address);

  void onDataReceived(Uint8List data);

  Future<void> sendMessage(String text);

  Future<void> dispose();
}
