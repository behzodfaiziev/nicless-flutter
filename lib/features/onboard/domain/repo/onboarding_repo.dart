import '../../../../core/utility/typedef.dart';
import '../entity/vape_data.dart';

abstract class OnboardingRepo {
  ResultFuture<String> saveVapeData(VapeData vapeData);
}
