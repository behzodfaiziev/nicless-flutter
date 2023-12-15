import '../exceptions/api_exception.dart';
import 'failure.dart';

class APIFailure extends Failure implements Exception {
  const APIFailure({
    required super.message,
    super.statusCode,
  });

  APIFailure.fromAPIException(APIException exception)
      : this(
          message: exception.message,
          statusCode: exception.statusCode,
        );
}
