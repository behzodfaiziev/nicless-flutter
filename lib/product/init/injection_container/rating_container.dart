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
      () => RatingRepoImpl(sl()),
    )

    /// Data Sources
    ..registerLazySingleton<RatingRemoteDataSource>(
      RatingRemoteDataSourceImpl.new,
    );
}
