import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';
import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({
    required AppNetworkManager network,
  }) : _network = network;

  final AppNetworkManager _network;

  @override
  Future<List<VapeDataModel>> fetchDevices() async {
    return _network.send<VapeDataModel, List<VapeDataModel>>(
      'vapes',
      method: AppRequestType.get,
      parseModel: const VapeDataModel(),
    );
  }
}
