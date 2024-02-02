import 'package:firebase_auth/firebase_auth.dart';

abstract class INetworkManager {
  const INetworkManager();

  Future<T> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
  });

  Future<T> post<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  });

  Future<T> put<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  });

  Future<T> patch<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  });

  Future<T> delete<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
  });

  Future<UserCredential> signInAnonymously();

  Future<void> signOut();

  Future<User?> currentUser();

  Future<Stream<User?>> authStateChanges();
}
