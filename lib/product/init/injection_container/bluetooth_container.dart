part of '_injection_container.dart';

void _bluetoothContainer() {
  sl

    /// OnBoarding Bloc
    ..registerFactory(
      () => BluetoothBloc(
        getBluetoothDevices: sl(),
        connectBluetoothDevice: sl(),
        disconnectBluetoothDevice: sl(),
      ),
    )

    // /// Use Cases
    ..registerLazySingleton(() => GetBluetoothDevices(sl()))
    ..registerLazySingleton(() => ConnectBluetoothDevice(sl()))
    ..registerLazySingleton(() => DisconnectBluetoothDevice(sl()))
    //
    /// Repositories
    ..registerLazySingleton<BluetoothRepo>(BluetoothRepoImpl.new);
  //
  // /// Data Sources
  // ..registerLazySingleton<OnBoardingLocalDataSource>(
  //     () => OnBoardingLocalDataSourceImplementation(sl()))
  //
  // /// External Dependencies
  // ..registerLazySingleton(
  //     () => CachedValuesHiveOperation(primitiveDatabase: sl()));
}
