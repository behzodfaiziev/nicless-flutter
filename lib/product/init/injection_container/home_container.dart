part of '_injection_container.dart';

Future<void> _homeContainer() async {
  sl

    /// OnBoarding Bloc
    ..registerFactory(() => HomeBloc(fetchDevices: sl()))
    ..registerFactory(AutomaticCounterBloc.new)
    /// Use Cases
    ..registerLazySingleton(() => FetchDevices(sl()))

    /// Repositories
    ..registerLazySingleton<HomeRepo>(
        () => HomeRepoImpl(remoteDataSource: sl()))

    /// Data Sources
    ..registerLazySingleton<HomeRemoteDataSource>(
        () => HomeRemoteDataSourceImpl(network: sl()));
}
