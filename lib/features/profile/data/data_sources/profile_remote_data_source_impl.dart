import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../product/constants/api_const.dart';
import '../models/weekly_stats_result_model.dart';
import 'profile_remote_data_source.dart';

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl({required AppNetworkManager network})
      : _network = network;

  final AppNetworkManager _network;

  @override
  Future<WeeklyStatsResultModel> weeklyStats() {
    return _network.requestModel<WeeklyStatsResultModel>(
      ApiConst.signIn,
      method: AppRequestType.get,
      parseModel: const WeeklyStatsResultModel(),
    );
  }
}
