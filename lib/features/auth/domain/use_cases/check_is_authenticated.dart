import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../repos/auth_repo.dart';

class CheckIsAuthenticated extends UsecaseWithoutParams<bool> {
  const CheckIsAuthenticated(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<bool> call() => _repo.checkIsAuthenticated();
}
