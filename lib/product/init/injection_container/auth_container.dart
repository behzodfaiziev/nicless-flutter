part of '_injection_container.dart';

void _authContainer() {
  sl

    /// Auth Bloc
    ..registerFactory(
      () => AuthBloc(
        checkIsAuthenticated: sl(),
        signIn: sl(),
        signOut: sl(),
      ),
    )

    /// Use Cases
    ..registerLazySingleton(() => SignOut(sl()))
    ..registerLazySingleton(() => SignIn(sl()))
    ..registerLazySingleton(() => CheckIsAuthenticated(sl()))

    /// Repositories
    ..registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(
        remoteDataSource: sl(),
      ),
    )

    /// Data Sources
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(networkManager: sl()),
    );
  // ..registerLazySingleton<AuthLocalDataSource>(
  //     () => AuthLocalDataSourceImpl(sl()));
}
