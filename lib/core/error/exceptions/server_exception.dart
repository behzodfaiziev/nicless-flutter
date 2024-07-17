import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({
    required this.message,
    this.statusCode = 505,
  });

  final int? statusCode;
  final String? message;

  @override
  List<Object?> get props => [statusCode, message];
}
