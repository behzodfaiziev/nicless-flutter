part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

final class IsAuthenticated extends AuthEvent {
  const IsAuthenticated();
}

final class SignInEvent extends AuthEvent {
  const SignInEvent({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object> get props => [email, password];
}

final class SignOutEvent extends AuthEvent {
  const SignOutEvent();
}