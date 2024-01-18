part of '_injection_container.dart';

Future<void> _onBoardingContainer() async {
  sl

    /// OnBoarding Bloc
    ..registerFactory(() => OnboardingBloc(
          getBluetoothDevices: sl(),
          connectBluetoothDevice: sl(),
        ))

    // /// Use Cases
    ..registerLazySingleton(() => GetBluetoothDevices(sl()))
    ..registerLazySingleton(() => ConnectBluetoothDevice(sl()))
    // ..registerLazySingleton(() => CheckIfUserFirstTimer(sl()))
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
