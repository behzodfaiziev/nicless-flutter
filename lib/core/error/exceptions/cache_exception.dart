import 'package:equatable/equatable.dart';

class CacheException extends Equatable implements Exception {
  const CacheException({
    required this.message,
    this.statusCode = 500,
  });

  final int statusCode;
  final String message;

  @override
  List<Object?> get props => [statusCode, message];
}
