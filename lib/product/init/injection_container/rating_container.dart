part of '_injection_container.dart';

void _ratingContainer() async {
  sl

  /// OnBoarding Bloc
    ..registerFactory(() => OnboardingBloc(saveVapeData: sl()))

  /// Use Cases
    ..registerLazySingleton(() => SaveVapeData(sl()))

  /// Repositories
    ..registerLazySingleton<OnboardingRepo>(
          () => OnboardingRepoImpl(remoteDataSource: sl()),
    )

  /// Data Sources
    ..registerLazySingleton<OnboardingRemoteDataSource>(
          () => OnboardingRemoteDataSourceImpl(network: sl()),
    );
}
