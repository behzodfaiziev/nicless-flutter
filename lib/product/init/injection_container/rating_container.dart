part of '_injection_container.dart';

void _ratingContainer() {
  sl

    /// Bloc
    ..registerFactory(() => ReportBloc(getPeriodicReport: sl()))

    /// Use Cases
    ..registerLazySingleton(() => GetPeriodicReport(sl()))

    /// Repositories
    ..registerLazySingleton<ReportRepo>(
      () => ReportRepoImpl(remoteDataSource: sl()),
    )

    /// Data Sources
    ..registerLazySingleton<ReportRemoteDataSource>(
      () => ReportRemoteDataSourceImpl(network: sl()),
    );
}
