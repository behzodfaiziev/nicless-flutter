import '../utility/typedef.dart';

abstract class UserCaseWithParams<Type, Params> {
  UserCaseWithParams();

  ResultFuture<Type> call(Params params);
}

abstract class UserCaseWithoutParams<Type> {
  UserCaseWithoutParams();

  ResultFuture<Type> call();
}
