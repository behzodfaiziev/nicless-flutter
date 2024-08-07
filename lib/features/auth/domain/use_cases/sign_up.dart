import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../data/models/sign_up_request_model.dart';
import '../repos/auth_repo.dart';

class SignUp extends UsecaseWithParams<void, SignUpRequestModel> {
  const SignUp(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(SignUpRequestModel params) async =>
      _repo.signUp(params: params);
}
