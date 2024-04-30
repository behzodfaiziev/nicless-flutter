import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/error/exceptions/api_exception.dart';
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
  Future<User?> getCurrentUser() async {
    try {
      return _network.currentUser();
    } catch (e) {
      throw APIException(message: e.toString());
    }
  }

  @override
  Future<String?> anonymousSignIn() async {
    final result = await _network.signInAnonymously();
    return result.user?.uid;
  }

  @override
  Future<void> createAnonymousUser({required String id}) async {
    await _network.post(
      url: NetworkUrlPath(path: 'users', docId: id),
      body: {
        'id': id,
        'name': 'Anonymous',
        'email': '',
        'photoUrl': '',
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      },
    );
  }

  @override
  Future<void> signOut() async {
    await _network.signOut();
  }
}
