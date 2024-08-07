import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../product/utils/constants/app/app_const.dart';
import '../../data/models/sign_in_request_model.dart';
import '../../data/models/sign_up_request_model.dart';
import '../../domain/use_cases/check_is_authenticated.dart';
import '../../domain/use_cases/sign_in.dart';
import '../../domain/use_cases/sign_out.dart';
import '../../domain/use_cases/sign_up.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required CheckIsAuthenticated checkIsAuthenticated,
    required SignIn signIn,
    required SignUp signUp,
    required SignOut signOut,
  })  : _checkIsAuthenticated = checkIsAuthenticated,
        _signIn = signIn,
        _signUp = signUp,
        _signOut = signOut,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
    on<IsAuthenticated>(_checkIsAuthenticatedHandler);
    on<SignInEvent>(_signInHandler);
    on<SignUpEvent>(_signUpHandler);
    on<SignOutEvent>(_signOutHandler);
  }

  final CheckIsAuthenticated _checkIsAuthenticated;
  final SignIn _signIn;
  final SignUp _signUp;
  final SignOut _signOut;

  Future<void> _checkIsAuthenticatedHandler(
    IsAuthenticated event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _checkIsAuthenticated();
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (authResult) => emit(IsAuthenticatedState(isAuth: authResult)),
    );
  }

  Future<void> _signOutHandler(
    SignOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signOut();
    result.fold(
      (failure) => emit(AuthError(message: 'Error: ${failure.message}')),
      (value) => emit(const IsAuthenticatedState(isAuth: false)),
    );
  }

  Future<void> _signInHandler(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthLoading());

    final result = await _signIn(
      SignInRequestModel(
        email: event.email,
        password: event.password,
      ),
    );
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (value) => emit(const IsAuthenticatedState(isAuth: true)),
    );
  }

  Future<void> _signUpHandler(
    SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthLoading());

    final result = await _signUp(
      SignUpRequestModel(
        email: event.email,
        password: event.password,
        fullName: event.fullName,
        fcmToken: 'fcmToken',
        platform:
            event.isAndroid ? AppConst.platformAndroid : AppConst.platformIOS,
      ),
    );
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (value) => emit(const UserSignedUpState()),
    );
  }
}
