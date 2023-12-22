part of '_injection_container.dart';

/// sl is an abbreviation for Service Locator
final sl = GetIt.instance;

class InjectionContainer {
  static InjectionContainer? _instance;

  static InjectionContainer get instance =>
      _instance ??= InjectionContainer._();

  InjectionContainer._();

  Future<void> init() async {
    sl

        /// External Dependencies:
        /// Cache
        .registerLazySingleton<PrimitiveDatabase>(
            () => SecureDatabaseManager(const FlutterSecureStorage()));

    /// Network
    // ..registerLazySingleton<INetworkManager<ErrorModelCustom>>(
    //     () => AppNetworkManager.instance.networkManager);

    await _authContainer();
    await _onBoardingContainer();
    await _settingsContainer();
  }
}