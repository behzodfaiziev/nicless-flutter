part of '_injection_container.dart';

void _ratingContainer() {
  sl

    /// OnBoarding Bloc
    ..registerFactory(
      () => RatingBloc(
        getWeeklyRating: sl(),
        getMonthlyRating: sl(),
        getYearlyRating: sl(),
      ),
    )

    /// Use Cases
    ..registerLazySingleton(() => GetWeeklyRating(sl()))
    ..registerLazySingleton(() => GetMonthlyRating(sl()))
    ..registerLazySingleton(() => GetYearlyRating(sl()))

    /// Repositories
    ..registerLazySingleton<RatingRepo>(
      () => OnboardingRepoImpl(remoteDataSource: sl()),
    )

    /// Data Sources
    ..registerLazySingleton<OnboardingRemoteDataSource>(
      () => OnboardingRemoteDataSourceImpl(network: sl()),
    );
}
