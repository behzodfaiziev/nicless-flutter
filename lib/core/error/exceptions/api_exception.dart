import 'package:equatable/equatable.dart';

class APIException extends Equatable implements Exception {
  const APIException({
    required this.message,
    this.statusCode = 505,
  });

  final int? statusCode;
  final String? message;

  @override
  List<Object?> get props => [statusCode, message];
}
