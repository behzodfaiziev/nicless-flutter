import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/sign_in_request_model.dart';
import '../../domain/use_cases/check_is_authenticated.dart';
import '../../domain/use_cases/sign_in.dart';
import '../../domain/use_cases/sign_out.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required CheckIsAuthenticated checkIsAuthenticated,
    required SignIn signIn,
    required SignOut signOut,
  })  : _checkIsAuthenticated = checkIsAuthenticated,
        _signIn = signIn,
        _signOut = signOut,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
    on<IsAuthenticated>(_checkIsAuthenticatedHandler);
    on<SignInEvent>(_signInHandler);
    on<SignOutEvent>(_signOutHandler);
  }

  final CheckIsAuthenticated _checkIsAuthenticated;
  final SignIn _signIn;
  final SignOut _signOut;

  Future<void> _checkIsAuthenticatedHandler(
    IsAuthenticated event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _checkIsAuthenticated();
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (isAuthenticated) =>
          emit(IsAuthenticatedResult(isAuthenticated: isAuthenticated)),
    );
  }

  // Future<void> _signInAnonymouslyHandler(
  //   SignInAnonymously event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(const AuthLoading());
  //   final result = await _anonymousSignIn();
  //   result.fold(
  //     (failure) => emit(AuthError(message: 'Error: ${failure.message}')),
  //     (user) => emit(const IsAuthenticatedResult(isAuthenticated: true)),
  //   );
  // }

  Future<void> _signOutHandler(
    SignOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signOut();
    result.fold(
      (failure) => emit(AuthError(message: 'Error: ${failure.message}')),
      (value) => emit(const IsAuthenticatedResult(isAuthenticated: false)),
    );
  }

  Future<void> _signInHandler(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signIn(
      SignInRequestModel(
        email: event.email,
        password: event.password,
      ),
    );
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (value) => emit(const IsAuthenticatedResult(isAuthenticated: true)),
    );
  }
}
