import '../utility/typedef.dart';

abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();

  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();

  ResultFuture<Type> call();
}

abstract class UsecaseWithParamsStream<Type, Params> {
  const UsecaseWithParamsStream();

  Result<Type> call(Params params);
}