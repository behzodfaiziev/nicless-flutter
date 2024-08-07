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

class IsAuthenticatedState extends AuthState {
  const IsAuthenticatedState({required this.isAuth});

  final bool isAuth;
}

final class UserSignedUpState extends AuthState {
  const UserSignedUpState();
}
