import '../../../../core/utility/typedef.dart';
import '../../data/models/weekly_stats_result_model.dart';

abstract class ProfileRepo {
  ResultFuture<WeeklyStatsResultModel> weeklyStats();
}
