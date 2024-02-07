import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../data/models/vape_data_model.dart';
import '../repo/onboarding_repo.dart';

class SaveVapeData extends UsecaseWithParams<String, VapeDataModel> {
  const SaveVapeData(this._repo);

  final OnboardingRepo _repo;

  @override
  ResultFuture<String> call(VapeDataModel params) => _repo.saveVapeData(params);
}
