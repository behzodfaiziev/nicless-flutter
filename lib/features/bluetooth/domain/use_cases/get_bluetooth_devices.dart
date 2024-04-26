import '../../../../core/usecase/usecase.dart';
import '../../../../core/utility/typedef.dart';
import '../../../bluetooth/data/models/bluetooth_device_model.dart';
import '../repo/bluetooth_repo.dart';

class GetBluetoothDevices
    extends UserCaseWithoutParams<List<BluetoothDeviceModel>> {

  GetBluetoothDevices(this._repository);
  final BluetoothRepo _repository;

  @override
  ResultFuture<List<BluetoothDeviceModel>> call() async =>
      _repository.getBluetoothDevices();
}
