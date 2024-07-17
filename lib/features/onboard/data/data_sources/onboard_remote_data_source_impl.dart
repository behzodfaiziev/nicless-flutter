import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../core/managers/network/model/app_empty_model.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';
import 'onboard_remote_data_source.dart';

class OnboardRemoteDataSourceImpl extends OnboardRemoteDataSource {
  OnboardRemoteDataSourceImpl({
    required AppNetworkManager network,
  }) : _network = network;
  final AppNetworkManager _network;

  @override
  Future<String> saveVapeData(VapeDataModel vapeData) async {
    await _network.send<AppEmptyModel, AppEmptyModel>(
      'url',
      parseModel: const AppEmptyModel(),
      method: AppRequestType.post,
      data: vapeData.toJson(),
    );
    return '';
  }
}
