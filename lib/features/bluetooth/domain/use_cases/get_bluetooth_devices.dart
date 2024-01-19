import '../../../../core/usecase/usecase.dart';
import '../../../../core/utility/typedef.dart';
import '../../../bluetooth/data/models/bluetooth_device_model.dart';
import '../repo/bluetooth_repo.dart';

class GetBluetoothDevices
    extends UserCaseWithoutParams<List<BluetoothDeviceModel>> {
  final BluetoothRepo _repository;

  GetBluetoothDevices(this._repository);

  @override
  ResultFuture<List<BluetoothDeviceModel>> call() async =>
      _repository.getBluetoothDevices();
}
