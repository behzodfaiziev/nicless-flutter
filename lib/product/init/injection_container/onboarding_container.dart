part of '_injection_container.dart';

Future<void> _onBoardingContainer() async {
  sl

    /// OnBoarding Bloc
    ..registerFactory(() => OnboardingBloc(saveVapeData: sl()))

    /// Use Cases
    ..registerLazySingleton(() => SaveVapeData(sl()))
    //
    /// Repositories
    ..registerLazySingleton<OnboardingRepo>(OnboardingRepoImpl.new);
  //
  // /// Data Sources
  // ..registerLazySingleton<OnBoardingLocalDataSource>(
  //     () => OnBoardingLocalDataSourceImplementation(sl()))
  //
  // /// External Dependencies
  // ..registerLazySingleton(
  //     () => CachedValuesHiveOperation(primitiveDatabase: sl()));
}
