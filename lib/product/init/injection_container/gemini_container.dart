part of '_injection_container.dart';

void _geminiContainer() {
  sl

    /// OnBoarding Bloc
    ..registerFactory(() => GeminiBloc(sendTextToGemini: sl()))

    /// Use Cases
    ..registerLazySingleton(() => SendTextToGemini(sl()))

    /// Repositories
    ..registerLazySingleton<GeminiRepo>(
      () => GeminiRepoImpl(remoteDataSource: sl()),
    )

    /// Data Sources
    ..registerLazySingleton<GeminiRemoteDataSource>(
      () => GeminiRemoteDataSourceImpl(generativeModel: sl()),
    );
}
