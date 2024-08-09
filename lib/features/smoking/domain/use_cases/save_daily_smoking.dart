import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../data/model/daily_smoking_model.dart';
import '../repo/smoking_repo.dart';

class SaveDailySmoking extends UsecaseWithParams<void, DailySmokingModel> {
  const SaveDailySmoking(this._repo);

  final SmokingRepo _repo;

  @override
  ResultFuture<void> call(DailySmokingModel params) =>
      _repo.saveDailySmoking(params);
}
