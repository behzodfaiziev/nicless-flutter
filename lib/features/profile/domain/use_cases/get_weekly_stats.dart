import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../data/models/weekly_stats_result_model.dart';
import '../repo/profile_repo.dart';

class GetWeeklyStats extends UsecaseWithoutParams<WeeklyStatsResultModel> {
  const GetWeeklyStats(this._repo);

  final ProfileRepo _repo;

  @override
  ResultFuture<WeeklyStatsResultModel> call() => _repo.weeklyStats();
}
