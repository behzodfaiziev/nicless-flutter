part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}



class SignInAnonymously extends AuthEvent {
  const SignInAnonymously();
}

class IsAuthenticated extends AuthEvent {
  const IsAuthenticated();
}
