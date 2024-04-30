import '../../../../core/utility/typedef.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<bool> checkIsAuthenticated();

  ResultFuture<String> anonymousSignIn();

  ResultFuture<void> signOut();
}
