part of '_injection_container.dart';

/// sl is an abbreviation for Service Locator
final sl = GetIt.instance;

class InjectionContainer {
  InjectionContainer._();

  static InjectionContainer? _instance;

  static InjectionContainer get instance =>
      _instance ??= InjectionContainer._();

  Future<void> init() async {
    sl

      /// External Dependencies:
      /// Cache
      ..registerLazySingleton<PrimitiveDatabase>(
        () => SecureDatabaseManager(const FlutterSecureStorage()),
      )

      /// Network
      ..registerLazySingleton<INetworkManager<ErrorModelCustom>>(
        NetworkManager<ErrorModelCustom>.new,
      );

    _authContainer();
    _bluetoothContainer();
    _onBoardingContainer();
    _homeContainer();
    _settingsContainer();
    _ratingContainer();
  }
}
