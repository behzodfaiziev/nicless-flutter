import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utility/typedef.dart';
import '../../data/models/bluetooth_device_model.dart';
import '../repo/bluetooth_repo.dart';

class ConnectBluetoothDevice
    extends UserCaseWithParams<BluetoothConnection, BluetoothDeviceModel> {
  ConnectBluetoothDevice(this._repository);

  final BluetoothRepo _repository;

  @override
  ResultFuture<BluetoothConnection> call(BluetoothDeviceModel params) =>
      _repository.connectBluetoothDevice(params);
}
