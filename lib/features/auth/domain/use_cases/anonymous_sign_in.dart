import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../repos/auth_repo.dart';

class AnonymousSignIn extends UsecaseWithoutParams<UserCredential> {
  const AnonymousSignIn(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<UserCredential> call() => _repo.anonymousSignIn();
}
