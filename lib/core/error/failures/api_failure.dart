import '../exceptions/server_exception.dart';
import 'failure.dart';

class ServerFailure extends Failure implements Exception {
  const ServerFailure({
    required super.message,
    super.statusCode,
  });

  ServerFailure.fromServerException(ServerException exception)
      : this(
          message: exception.message,
          statusCode: exception.statusCode,
        );
}
