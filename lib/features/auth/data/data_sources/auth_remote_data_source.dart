
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  Future<bool> checkIsAuthenticated();

  Future<UserCredential> anonymousSignIn();
}
