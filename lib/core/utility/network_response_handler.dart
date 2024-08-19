import 'package:dio/dio.dart' as dio;

import '../error/exceptions/server_exception.dart';

class ResponseHandler {
  static bool networkUploadFile<T>(dio.Response<T> response) {
    if (response.statusCode != 200 && response.statusCode != 201) {
      throw ServerException(
        statusCode: response.statusCode,
        message: response.statusMessage ?? '',
      );
    }
    return true;
  }
}
