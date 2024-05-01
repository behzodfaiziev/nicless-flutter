import '../../../../core/error/exceptions/api_exception.dart';
import '../../../../core/managers/network/entities/network_url_path.dart';
import '../../../../core/managers/network/i_network_manager.dart';
import '../../../../core/managers/network/models/error_model_custom.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';
import 'onboard_remote_data_source.dart';

class OnboardRemoteDataSourceImpl extends OnboardRemoteDataSource {
  OnboardRemoteDataSourceImpl({
    required INetworkManager<ErrorModelCustom> network,
  }) : _network = network;
  final INetworkManager<ErrorModelCustom> _network;

  @override
  Future<String> saveVapeData(VapeDataModel vapeData) async {
    final currentUser = await _network.currentUser();
    if (currentUser == null) {
      throw const APIException(message: 'User not found');
    }
    final result = await _network.post(
      url: NetworkUrlPath(
        path: 'vapes',
        docId: currentUser.uid,
        path2: 'vapeData',
      ),
      body: vapeData.toJson(),
    );
    return result.id;
  }
}
