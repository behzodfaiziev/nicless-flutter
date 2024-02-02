import '../../../../core/managers/network/i_network_manager.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({
    required INetworkManager networkManager,
  }) : _network = networkManager;

  final INetworkManager _network;

  @override
  Future<bool> checkIsAuthenticated() async {
    return await _network.currentUser() != null ? true : false;
  }
}
