import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/utility/typedef.dart';
import '../../../bluetooth/data/models/bluetooth_device_model.dart';

abstract class BluetoothRepo {
  ResultFuture<List<BluetoothDeviceModel>> getBluetoothDevices();

  ResultFuture<BluetoothConnection> connectBluetoothDevice(
    BluetoothDeviceModel device,
  );

  ResultFuture<void> disconnectBluetoothDevice(BluetoothConnection device);
}
