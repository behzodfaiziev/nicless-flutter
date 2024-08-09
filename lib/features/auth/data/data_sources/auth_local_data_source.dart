abstract class AuthLocalDataSource {
  const AuthLocalDataSource();

  Future<void> saveAccessToken(String token);

  Future<String?> getAccessToken();

  Future<void> removeAccessToken();

  Future<void> saveRefreshToken(String token);

  Future<String?> getRefreshToken();

  Future<void> removeRefreshToken();

  Future<void> saveSessionId(String sessionId);

  Future<String?> getSessionId();

  Future<void> removeSessionId();
}
