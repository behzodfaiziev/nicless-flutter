import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/use_cases/anonymous_sign_in.dart';
import '../../domain/use_cases/check_is_authenticated.dart';
import '../../domain/use_cases/sign_out.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AnonymousSignIn anonymousSignIn,
    required SignOut signOut,
    required CheckIsAuthenticated checkIsAuthenticated,
  })  : _checkIsAuthenticated = checkIsAuthenticated,
        _anonymousSignIn = anonymousSignIn,
        _signOut = signOut,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
    on<SignInAnonymously>(_signInAnonymouslyHandler);
    on<IsAuthenticated>(_checkIsAuthenticatedHandler);
    on<SignOutEvent>(_signOutHandler);
  }

  final CheckIsAuthenticated _checkIsAuthenticated;
  final AnonymousSignIn _anonymousSignIn;
  final SignOut _signOut;

  Future<void> _checkIsAuthenticatedHandler(
      IsAuthenticated event, Emitter<AuthState> emit) async {
    final result = await _checkIsAuthenticated();
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (isAuthenticated) =>
          emit(IsAuthenticatedResult(isAuthenticated: isAuthenticated)),
    );
  }

  Future<void> _signInAnonymouslyHandler(
      SignInAnonymously event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final result = await _anonymousSignIn();
    result.fold(
      (failure) => emit(AuthError(message: 'Error: ${failure.message}')),
      (value) =>
          emit(IsAuthenticatedResult(isAuthenticated: value.user != null)),
    );
  }

  Future<void> _signOutHandler(
      SignOutEvent event, Emitter<AuthState> emit) async {
    final result = await _signOut();
    result.fold(
      (failure) => emit(AuthError(message: 'Error: ${failure.message}')),
      (value) => emit(const IsAuthenticatedResult(isAuthenticated: false)),
    );
  }
}
