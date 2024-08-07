import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/smoking/create_smoking_model.dart';

abstract class OnboardRepo {
  ResultFuture<void> saveVapeData(CreateSmokingModel smoking);
}
