import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/utility/typedef.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<bool> checkIsAuthenticated();

  ResultFuture<String> signOut();

  ResultFuture<UserCredential> anonymousSignIn();
}
