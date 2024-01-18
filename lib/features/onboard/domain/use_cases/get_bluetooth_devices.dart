import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utility/typedef.dart';
import '../repo/onboarding_repo.dart';

class GetBluetoothDevices extends UserCaseWithoutParams<List<BluetoothDevice>> {
  final OnboardingRepo _repository;

  GetBluetoothDevices(this._repository);

  @override
  ResultFuture<List<BluetoothDevice>> call() async => _repository.getBluetoothDevices();
}
