import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../core/managers/network/model/app_empty_model.dart';
import '../../../../product/constants/api_const.dart';
import '../model/daily_smoking_model.dart';
import 'smoking_remote_data_source.dart';

class SmokingRemoteDataSourceImpl implements SmokingRemoteDataSource {
  SmokingRemoteDataSourceImpl({required AppNetworkManager network})
      : _networkManager = network;

  final AppNetworkManager _networkManager;

  @override
  Future<void> saveDailySmoking(DailySmokingModel params) async {
    await _networkManager.send<AppEmptyModel, AppEmptyModel>(
      ApiConst.createDailySmoking,
      method: AppRequestType.post,
      parseModel: const AppEmptyModel(),
      data: params,
    );
  }
}
