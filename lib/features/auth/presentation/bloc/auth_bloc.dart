import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/use_cases/anonymous_sign_in.dart';
import '../../domain/use_cases/sign_out.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AnonymousSignIn anonymousSignIn,
    required SignOut signOut,
  })  : _anonymousSignIn = anonymousSignIn,
        _signOut = signOut,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final AnonymousSignIn _anonymousSignIn;
  final SignOut _signOut;
}
