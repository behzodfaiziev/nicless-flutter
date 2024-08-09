part of '_injection_container.dart';

void _smokingContainer() {
  sl

    /// Bloc
    ..registerFactory(() => AutomaticCounterBloc(saveDailySmoking: sl()))

    /// Use Cases
    ..registerLazySingleton(() => SaveDailySmoking(sl()))

    /// Repositories
    ..registerLazySingleton<SmokingRepo>(
      () => SmokingRepoImpl(remoteDataSource: sl()),
    )

    /// Data Sources
    ..registerLazySingleton<SmokingRemoteDataSource>(
      () => SmokingRemoteDataSourceImpl(network: sl()),
    );
}
