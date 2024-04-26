import '../../../../core/managers/network/entities/network_url_path.dart';
import '../../../../core/managers/network/i_network_manager.dart';
import '../../../../core/managers/network/models/error_model_custom.dart';
import '../../../../product/models/vape_data_model.dart';
import 'onboarding_remote_data_source.dart';

class OnboardingRemoteDataSourceImpl extends OnboardingRemoteDataSource {

  OnboardingRemoteDataSourceImpl(
      {required INetworkManager<ErrorModelCustom> network,})
      : _network = network;
  final INetworkManager<ErrorModelCustom> _network;

  @override
  Future<String> saveVapeData(VapeDataModel vapeData) async {
    final currentUser = await _network.currentUser();
    if (currentUser == null) {
      throw Exception('User not found');
    }
    final result = await _network.post(
        url: NetworkUrlPath(
          path: 'vapes',
          docId: currentUser.uid,
          path2: 'vapeData',
        ),
        body: vapeData.toJson(),);
    return result.id;
  }
}
