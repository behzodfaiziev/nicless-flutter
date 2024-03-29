import '../../../../core/utility/typedef.dart';
import '../../../../product/models/vape_data_model.dart';

abstract class OnboardingRepo {
  ResultFuture<String> saveVapeData(VapeDataModel vapeData);
}
