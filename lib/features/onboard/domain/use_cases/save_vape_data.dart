import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/smoking/create_smoking_model.dart';
import '../repo/onboard_repo.dart';

class SaveVapeData extends UsecaseWithParams<void, CreateSmokingModel> {
  const SaveVapeData(this._repo);

  final OnboardRepo _repo;

  @override
  ResultFuture<void> call(CreateSmokingModel params) =>
      _repo.saveVapeData(params);
}
