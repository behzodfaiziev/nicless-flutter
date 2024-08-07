import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/smoking/smoking_list_model.dart';
import '../repo/home_repo.dart';

class FetchDevices extends UsecaseWithoutParams<SmokingListModel> {
  const FetchDevices(this._repo);

  final HomeRepo _repo;

  @override
  ResultFuture<SmokingListModel> call() => _repo.fetchDevices();
}
