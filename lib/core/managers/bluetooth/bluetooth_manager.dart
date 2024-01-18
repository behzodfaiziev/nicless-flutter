import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';

import '../permission/permission_manager.dart';
import 'i_bluetooth_manager.dart';

class BluetoothManager extends IBluetoothManager {
  Future<List<BluetoothDevice>> startScan() async {
    final List<BluetoothDevice> boundedDevices = [];
    final PermissionManager permissionManager = PermissionManager();
    await permissionManager.getPermission(permission: Permission.bluetooth);
    await permissionManager.getPermission(permission: Permission.bluetoothScan);
    await permissionManager.getPermission(
        permission: Permission.bluetoothConnect);
    // streamSubscription =
    //     FlutterBluetoothSerial.instance.startDiscovery().listen(print);

    await FlutterBluetoothSerial.instance
        .getBondedDevices()
        .then((List<BluetoothDevice> bondedDevices) {
      for (final BluetoothDevice device in bondedDevices) {
        boundedDevices.add(device);
      }
    });
    // streamSubscription?.onDone(() {
    //   //Do something when the discovery process ends
    // });
    return boundedDevices;
  }

  /// Connect to the device via Bluetooth
  @override
  Future<bool> connectBl(String address) async {
    try {
      final BluetoothConnection newConnection = await BluetoothConnection.toAddress(address);
      print('Connected to the device');
      connection = newConnection;

      // Creates a listener to receive data
      connection?.input?.listen(onDataReceived).onDone(() {});
      return true;


    } catch (e) {
      return false;
    }
  }

  // When receive information
  @override
  void onDataReceived(Uint8List data) {
    // Allocate buffer for parsed data
    int backspacesCounter = 0;
    for (final int byte in data) {
      if (byte == 8 || byte == 127) {
        backspacesCounter++;
      }
    }
    final Uint8List buffer = Uint8List(data.length - backspacesCounter);
    int bufferIndex = buffer.length;

    // Apply backspace control character
    backspacesCounter = 0;
    for (int i = data.length - 1; i >= 0; i--) {
      if (data[i] == 8 || data[i] == 127) {
        backspacesCounter++;
      } else {
        if (backspacesCounter > 0) {
          backspacesCounter--;
        } else {
          buffer[--bufferIndex] = data[i];
        }
      }
    }
    print('result: $result');
    // Create message if there is new line character
    result = String.fromCharCodes(buffer);
  }

  // To send Message
  @override
  Future<void> sendMessage(String text) async {
    if (text.isNotEmpty) {
      try {
        connection?.output.add(Uint8List.fromList(utf8.encode('$text\r\n')));
        await connection?.output.allSent;
      } catch (e) {
        rethrow;
      }
    }
  }

  @override
  Future<void> dispose() async {
    fls?.setPairingRequestHandler(null);
    if (connection != null) {
      if (connection!.isConnected) {
        connection!.dispose();
        connection = null;
      }
    }
  }
}
