import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../entity/vape_data.dart';
import '../repo/onboarding_repo.dart';

class SaveVapeData extends UsecaseWithParams<String, VapeData> {
  const SaveVapeData(this._repo);

  final OnboardingRepo _repo;

  @override
  ResultFuture<String> call(VapeData params) => _repo.saveVapeData(params);
}
