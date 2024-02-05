import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/managers/network/i_network_manager.dart';
import '../../../../core/managers/network/models/error_model_custom.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({
    required INetworkManager<ErrorModelCustom> networkManager,
  }) : _network = networkManager;

  final INetworkManager<ErrorModelCustom> _network;

  @override
  Future<bool> checkIsAuthenticated() async {
    return await _network.currentUser() != null ? true : false;
  }

  @override
  Future<UserCredential> anonymousSignIn() async {
    return _network.signInAnonymously();
  }
}
