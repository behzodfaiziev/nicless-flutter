import '../models/sign_in_request_model.dart';
import '../models/sign_in_response_model.dart';

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  Future<SignInResponseModel> signIn({required SignInRequestModel params});

  Future<void> signOut();

  void setToken(String accessToken, String refreshToken);
}
