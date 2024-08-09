import '../../../../core/utility/typedef.dart';
import '../../data/model/daily_smoking_model.dart';

abstract class SmokingRepo {
  ResultFuture<void> saveDailySmoking(DailySmokingModel params);
}
