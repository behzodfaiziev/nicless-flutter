import '../../../../core/error/exceptions/api_exception.dart';
import '../../../../core/managers/network/entities/network_url_path.dart';
import '../../../../core/managers/network/i_network_manager.dart';
import '../../../../core/managers/network/models/error_model_custom.dart';
import '../../../../product/models/vape_data_model.dart';
import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({
    required INetworkManager<ErrorModelCustom> network,
  }) : _network = network;

  final INetworkManager<ErrorModelCustom> _network;

  @override
  Future<List<VapeDataModel>> fetchDevices() async {
    try {
      final result = await _network.get<VapeDataModel, List<VapeDataModel>>(
          url: NetworkUrlPath(path: 'vapes'), parseModel: VapeDataModel(),);

      return result.data ?? [];
    } catch (e) {
      throw APIException(message: e.toString());
    }
  }
}
