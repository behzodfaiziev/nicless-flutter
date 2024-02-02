import 'package:firebase_auth/firebase_auth.dart';

import 'i_network_manager.dart';

class NetworkManager extends INetworkManager {
  NetworkManager();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<T> delete<T>(String url, {Map<String, dynamic>? queryParameters}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<T> get<T>(
      {required String url, Map<String, dynamic>? queryParameters}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<T> patch<T>(
      {required String url,
      required Map<String, dynamic> body,
      Map<String, dynamic>? queryParameters}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<T> post<T>(
      {required String url,
      required Map<String, dynamic> body,
      Map<String, dynamic>? queryParameters}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<T> put<T>(
      {required String url,
      required Map<String, dynamic> body,
      Map<String, dynamic>? queryParameters}) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInAnonymously() async {
    return _auth.signInAnonymously();
  }

  @override
  Future<void> signOut() async {
    return _auth.signOut();
  }

  @override
  Future<User?> currentUser() async {
    return _auth.currentUser;
  }

  @override
  Future<Stream<User?>> authStateChanges() async {
    return _auth.authStateChanges();
  }
}
