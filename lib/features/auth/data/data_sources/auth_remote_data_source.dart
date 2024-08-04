
abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  Future<String?> anonymousSignIn();

  Future<void> createAnonymousUser({required String id});

  Future<void> signOut();
}
