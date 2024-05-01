part of '_injection_container.dart';

void _onBoardingContainer() {
  sl

    /// OnBoarding Bloc
    ..registerFactory(() => OnboardingBloc(saveVapeData: sl()))

    /// Use Cases
    ..registerLazySingleton(() => SaveVapeData(sl()))

    /// Repositories
    ..registerLazySingleton<OnboardRepo>(
      () => OnboardRepoImpl(remoteDataSource: sl()),
    )

    /// Data Sources
    ..registerLazySingleton<OnboardRemoteDataSource>(
      () => OnboardRemoteDataSourceImpl(network: sl()),
    );
}
