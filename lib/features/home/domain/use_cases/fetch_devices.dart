import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';
import '../repo/home_repo.dart';

class FetchDevices extends UsecaseWithoutParams<List<VapeDataModel>> {
  const FetchDevices(this._repo);

  final HomeRepo _repo;

  @override
  ResultFuture<List<VapeDataModel>> call() => _repo.fetchDevices();
}
