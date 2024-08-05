import '../../../../core/utility/typedef.dart';
import '../../data/models/sign_in_request_model.dart';
import '../../data/models/sign_in_response_model.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<bool> checkIsAuthenticated();

  ResultFuture<void> signOut();

  ResultFuture<SignInResponseModel> signIn({
    required SignInRequestModel params,
  });
}
