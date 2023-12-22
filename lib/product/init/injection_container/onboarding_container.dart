part of '_injection_container.dart';

Future<void> _onBoardingContainer() async {
  // sl
  //
  //   /// OnBoarding Bloc
  //   ..registerFactory(() => OnBoardingBloc(
  //         cacheFirstTimer: sl(),
  //         checkIfUserFirstTimer: sl(),
  //       ))
  //
  //   /// Use Cases
  //   ..registerLazySingleton(() => CacheFirstTimer(sl()))
  //   ..registerLazySingleton(() => CheckIfUserFirstTimer(sl()))
  //
  //   /// Repositories
  //   ..registerLazySingleton<OnBoardingRepository>(
  //       () => OnBoardingRepositoryImplementation(sl()))
  //
  //   /// Data Sources
  //   ..registerLazySingleton<OnBoardingLocalDataSource>(
  //       () => OnBoardingLocalDataSourceImplementation(sl()))
  //
  //   /// External Dependencies
  //   ..registerLazySingleton(
  //       () => CachedValuesHiveOperation(primitiveDatabase: sl()));
}
