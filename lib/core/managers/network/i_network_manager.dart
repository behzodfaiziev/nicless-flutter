import 'package:firebase_auth/firebase_auth.dart';

import 'entities/created_id_response.dart';
import 'entities/network_query_parameters.dart';
import 'entities/network_url_path.dart';
import 'interface/i_fire_response_model.dart';
import 'interface/i_network_model.dart';

abstract class INetworkManager<E extends INetworkModel<E>?> {
  const INetworkManager();

  Future<String> createAUniqueId({required String collectionPath});

  Future<IResponseModel<R?, E?>> get<T extends INetworkModel<T>, R>({
    required NetworkUrlPath url,
    required T parseModel,
    NetworkQueryParameters? queryParameters,
  });

  Future<CreatedIdResponse> post({
    required NetworkUrlPath url,
    required Map<String, dynamic> body,
  });

  Future<void> put<T>({
    required NetworkUrlPath url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  });

  Future<void> delete<T>({required NetworkUrlPath url});

  Future<UserCredential> signInAnonymously();

  Future<void> signOut();

  Future<User?> currentUser();

  Future<Stream<User?>> authStateChanges();
}
