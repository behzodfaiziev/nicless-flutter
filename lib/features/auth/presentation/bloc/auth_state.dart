part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthError extends AuthState {
  const AuthError({this.message});

  final String? message;

  @override
  List<Object?> get props => [message];
}

class IsAuthenticatedResult extends AuthState {
  const IsAuthenticatedResult({required this.isAuthenticated});

  final bool isAuthenticated;
}
