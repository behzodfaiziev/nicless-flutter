import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utility/typedef.dart';
import '../repo/onboarding_repo.dart';

class ConnectBluetoothDevice extends UserCaseWithParams<bool, BluetoothDevice> {
  ConnectBluetoothDevice(this._repository);

  final OnboardingRepo _repository;

  @override
  ResultFuture<bool> call(BluetoothDevice params) =>
      _repository.connectBluetoothDevice(params);
}
