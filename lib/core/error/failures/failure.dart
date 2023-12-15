import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    this.message,
    this.statusCode,
    this.errorCode,
  });

  final int? statusCode;
  final List<String>? message;
  final int? errorCode;

  @override
  List<Object?> get props => [statusCode, message, errorCode];
}
