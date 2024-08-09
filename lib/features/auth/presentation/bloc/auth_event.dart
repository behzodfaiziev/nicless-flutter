part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

final class IsAuthenticatedEvent extends AuthEvent {
  const IsAuthenticatedEvent();
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

final class SignUpEvent extends AuthEvent {
  const SignUpEvent({
    required this.email,
    required this.password,
    required this.fullName,
    required this.isAndroid,
  });

  final String email;
  final String password;
  final String fullName;
  final bool isAndroid;

  @override
  List<Object> get props => [email, password, fullName, isAndroid];
}

final class SignOutEvent extends AuthEvent {
  const SignOutEvent();
}
