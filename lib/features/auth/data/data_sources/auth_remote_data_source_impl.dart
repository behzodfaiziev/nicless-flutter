import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../core/managers/network/model/app_empty_model.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({
    required AppNetworkManager networkManager,
  }) : _network = networkManager;

  final AppNetworkManager _network;

  @override
  Future<String?> anonymousSignIn() async {
    await _network.send<AppEmptyModel, AppEmptyModel>(
      'url',
      method: AppRequestType.post,
      parseModel: const AppEmptyModel(),
    );
    return null;
  }

  @override
  Future<void> createAnonymousUser({required String id}) async {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    throw UnimplementedError();
  }
}
