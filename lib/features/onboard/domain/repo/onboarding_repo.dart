import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/utility/typedef.dart';

abstract class OnboardingRepo {
  ResultFuture<List<BluetoothDevice>> getBluetoothDevices();

  ResultFuture<bool> connectBluetoothDevice(BluetoothDevice device);
}
