import '../exceptions/cache_exception.dart';
import 'failure.dart';

class CacheFailure extends Failure {
  const CacheFailure({
    super.message,
    super.statusCode,
    super.errorCode,
  });

  CacheFailure.fromCacheException(CacheException exception)
      : this(
          message: exception.message,
          statusCode: exception.statusCode,
        );
}
