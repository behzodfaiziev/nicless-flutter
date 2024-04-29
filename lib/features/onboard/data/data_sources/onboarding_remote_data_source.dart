
import '../../../../product/data_objects/models/vape_data_model.dart';

abstract class OnboardingRemoteDataSource {
  Future<String> saveVapeData(VapeDataModel vapeData);
}