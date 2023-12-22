part of '_injection_container.dart';

Future<void> _authContainer() async {
  // sl
  //
  //   /// Auth Bloc
  //   ..registerFactory(() => AuthBloc(
  //         signUpUser: sl(),
  //         signInUser: sl(),
  //         forgotPassword: sl(),
  //         checkIfAuthenticated: sl(),
  //       ))
  //
  //   /// Use Cases
  //   ..registerLazySingleton(() => SignUpUser(sl()))
  //   ..registerLazySingleton(() => SignInUser(sl()))
  //   ..registerLazySingleton(() => CheckIfAuthenticated(sl()))
  //
  //   /// Repositories
  //   ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImplementation(
  //         authLocalDataSource: sl(),
  //         authRemoteDataSource: sl(),
  //       ))
  //
  //   /// Data Sources
  //   ..registerLazySingleton<AuthRemoteDataSource>(
  //       () => AuthRemoteDataSourceImplementation(sl()))
  //   ..registerLazySingleton<AuthLocalDataSource>(
  //       () => AuthLocalDataSourceImplementation(sl()));
}
