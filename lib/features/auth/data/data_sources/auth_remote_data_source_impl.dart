import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/managers/network/entities/network_url_path.dart';
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

  @override
  Future<void> createAnonymousUser({required String id}) async {
    await _network.post(url: NetworkUrlPath(path: 'users', docId: id), body: {
      'id': id,
      'name': 'Anonymous',
      'email': '',
      'photoUrl': '',
      'createdAt': DateTime.now().toIso8601String(),
      'updatedAt': DateTime.now().toIso8601String(),
    });
  }

  @override
  Future<void> signOut() async {
    await _network.signOut();
  }
}
