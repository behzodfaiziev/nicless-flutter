import 'package:equatable/equatable.dart';
import 'package:net_kit/net_kit.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({
    required this.message,
    this.statusCode = 505,
  });

  ServerException.fromApiException(ApiException exception)
      : this(
          message: exception.message,
          statusCode: exception.statusCode,
        );

  final int? statusCode;
  final String? message;

  @override
  List<Object?> get props => [statusCode, message];
}
