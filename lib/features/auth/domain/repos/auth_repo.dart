import '../../../../core/utility/typedef.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<bool> checkIsAuthenticated();

  ResultFuture<String> signOut();

  ResultFuture<String> anonymousSignIn();
}
