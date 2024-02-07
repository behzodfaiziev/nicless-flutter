import '../../../../core/utility/typedef.dart';
import '../../data/models/vape_data_model.dart';

abstract class OnboardingRepo {
  ResultFuture<String> saveVapeData(VapeDataModel vapeData);
}
