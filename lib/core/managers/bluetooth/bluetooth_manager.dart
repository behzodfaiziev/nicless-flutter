import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../features/bluetooth/data/models/bluetooth_device_model.dart';
import '../permission/permission_manager.dart';
import 'i_bluetooth_manager.dart';

class BluetoothManager extends IBluetoothManager {
  Future<List<BluetoothDeviceModel>> startScan() async {
    final List<BluetoothDeviceModel> boundedDevices = [];

    /// Get permissions for Bluetooth
    final PermissionManager permissionManager = PermissionManager();
    await permissionManager.getPermission(permission: Permission.bluetooth);
    await permissionManager.getPermission(permission: Permission.bluetoothScan);
    await permissionManager.getPermission(
        permission: Permission.bluetoothConnect,);

    final List<BluetoothDevice> boundedDevicesList =
        await FlutterBluetoothSerial.instance.getBondedDevices();

    boundedDevices.addAll(boundedDevicesList.map((device) {
      return BluetoothDeviceModel(
        address: device.address,
        name: device.name,
        isConnected: device.isConnected,
      );
    }),);
    return boundedDevices;
  }

  /// Connect to the device via Bluetooth
  @override
  Future<BluetoothConnection> connectBl(String address) async {
    try {
      final BluetoothConnection newConnection =
          await BluetoothConnection.toAddress(address);
      if (newConnection.isConnected == false) {
        throw Exception('Not connected');
      }

      return newConnection;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> disconnectBl(BluetoothConnection connection) async {
    try {
      await connection.close();
      connection.dispose();
    } catch (e) {
      rethrow;
    }
  }

  // To send Message
  @override
  Future<void> sendMessage(BluetoothConnection connection, String text) async {
    if (text.isNotEmpty) {
      try {
        connection.output.add(Uint8List.fromList(utf8.encode('$text\r\n')));
        await connection.output.allSent;
      } catch (e) {
        rethrow;
      }
    }
  }
}
