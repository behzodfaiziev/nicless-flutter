part of '_injection_container.dart';

void _authContainer() {
  sl

    /// Auth Bloc
    ..registerFactory(
      () => AuthBloc(
        checkIsAuthenticated: sl(),
        anonymousSignIn: sl(),
        signOut: sl(),
      ),
    )

    /// Use Cases
    ..registerLazySingleton(() => AnonymousSignIn(sl()))
    ..registerLazySingleton(() => SignOut(sl()))
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
