import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../repos/auth_repo.dart';

class SignOut extends UsecaseWithoutParams<void> {
  const SignOut(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call() => _repo.signOut();
}
