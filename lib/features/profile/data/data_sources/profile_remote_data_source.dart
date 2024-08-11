import '../models/weekly_stats_result_model.dart';

abstract class ProfileRemoteDataSource {
  Future<WeeklyStatsResultModel> weeklyStats();
}
