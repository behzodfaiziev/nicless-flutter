import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utility/typedef.dart';
import '../repo/bluetooth_repo.dart';

class DisconnectBluetoothDevice
    extends UserCaseWithParams<void, BluetoothConnection> {
  DisconnectBluetoothDevice(this._repository);

  final BluetoothRepo _repository;

  @override
  ResultFuture<void> call(BluetoothConnection params) =>
      _repository.disconnectBluetoothDevice(params);
}
