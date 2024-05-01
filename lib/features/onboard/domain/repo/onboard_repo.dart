import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';

abstract class OnboardRepo {
  ResultFuture<String> saveVapeData(VapeDataModel vapeData);
}
