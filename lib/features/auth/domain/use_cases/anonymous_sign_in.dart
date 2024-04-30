import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../repos/auth_repo.dart';

class AnonymousSignIn extends UsecaseWithoutParams<String> {
  const AnonymousSignIn(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<String> call() => _repo.anonymousSignIn();
}
