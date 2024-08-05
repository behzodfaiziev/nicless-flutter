import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../data/models/sign_in_request_model.dart';
import '../../data/models/sign_in_response_model.dart';
import '../repos/auth_repo.dart';

class SignIn
    extends UsecaseWithParams<SignInResponseModel, SignInRequestModel> {
  const SignIn(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<SignInResponseModel> call(SignInRequestModel params) async =>
      _repo.signIn(params: params);
}
