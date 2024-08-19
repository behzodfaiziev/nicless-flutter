import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../product/constants/api_const.dart';
import '../../../../product/data_objects/models/smoking/smoking_list_model.dart';
import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({
    required AppNetworkManager network,
  }) : _network = network;

  final AppNetworkManager _network;

  @override
  Future<SmokingListModel> fetchDevices() async {
    return _network.requestModel<SmokingListModel>(
      ApiConst.smoking,
      method: AppRequestType.get,
      parseModel: const SmokingListModel(),
    );
  }
}
