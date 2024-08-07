class ApiConst {
  static const String baseUrl = 'http://api-nicless.eu-west-1.elasticbeanstalk.com';

  static const String _api = '/api';

  /// Auth
  static const String _auth = '$_api/auth';
  static const String signIn = '$_auth/login';
  static const String signUp = '$_auth/sign_up';
  static const String signOut = '$_auth/logout';
}
