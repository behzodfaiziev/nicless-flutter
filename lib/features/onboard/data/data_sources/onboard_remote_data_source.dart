import '../../../../product/data_objects/models/smoking/create_smoking_model.dart';

abstract class OnboardRemoteDataSource {
  Future<void> saveVapeData(CreateSmokingModel smoking);
}