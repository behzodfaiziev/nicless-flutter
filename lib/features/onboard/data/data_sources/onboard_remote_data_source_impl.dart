import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../product/constants/api_const.dart';
import '../../../../product/data_objects/models/smoking/create_smoking_model.dart';
import 'onboard_remote_data_source.dart';

class OnboardRemoteDataSourceImpl extends OnboardRemoteDataSource {
  OnboardRemoteDataSourceImpl({
    required AppNetworkManager network,
  }) : _network = network;
  final AppNetworkManager _network;

  @override
  Future<void> saveSmokingData(CreateSmokingModel smoking) async {
    await _network.requestVoid(
      ApiConst.createSmoking,
      method: AppRequestType.post,
      data: smoking.toJson(),
    );
    return;
  }
}
