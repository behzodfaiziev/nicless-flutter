import '../model/daily_smoking_model.dart';

abstract class SmokingRemoteDataSource {
  Future<void> saveDailySmoking(DailySmokingModel params);
}
