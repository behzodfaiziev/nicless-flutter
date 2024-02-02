part of '_injection_container.dart';

Future<void> _authContainer() async {
  sl

    /// Auth Bloc
    ..registerFactory(() => AuthBloc(
          anonymousSignIn: sl(),
          signOut: sl(),
        ))

    /// Use Cases
    ..registerLazySingleton(() => AnonymousSignIn(sl()))
    ..registerLazySingleton(() => SignOut(sl()))

    /// Repositories
    ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(
          localDataSource: sl(),
          remoteDataSource: sl(),
        ))

    /// Data Sources
    ..registerLazySingleton<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(networkManager: sl()))
    ..registerLazySingleton<AuthLocalDataSource>(
        () => AuthLocalDataSourceImpl(sl()));
}
