import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/utility/typedef.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<bool> checkIsAuthenticated();

  ResultFuture<UserCredential> anonymousSignIn();

  ResultFuture<void> signOut();
}
