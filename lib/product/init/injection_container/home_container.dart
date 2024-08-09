part of '_injection_container.dart';

void _homeContainer() {
  sl

    /// Bloc
    ..registerFactory(() => HomeBloc(fetchDevices: sl()))

    /// Use Cases
    ..registerLazySingleton(() => FetchDevices(sl()))

    /// Repositories
    ..registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(remoteDataSource: sl()),
    )

    /// Data Sources
    ..registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(network: sl()),
    );
}
