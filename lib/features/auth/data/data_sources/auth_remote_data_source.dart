import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  Future<User?> getCurrentUser();

  Future<String?> anonymousSignIn();

  Future<void> createAnonymousUser({required String id});

  Future<void> signOut();
}
