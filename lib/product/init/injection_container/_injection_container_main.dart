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

      /// Bluetooth Manager
      ..registerLazySingleton<BluetoothManager>(BluetoothManager.new)

      /// Network
      ..registerLazySingleton<INetworkManager<ErrorModelCustom>>(
        NetworkManager<ErrorModelCustom>.new,
      )

      /// Gemini
      ..registerLazySingleton<GenerativeModel>(
        () => GenerativeModel(
          model: 'gemini-pro',
          apiKey: CredentialsConst.geminiApiKey,
          generationConfig: GenerationConfig(
            maxOutputTokens: 1000,
          ),
        ),
      );

    _authContainer();
    _bluetoothContainer();
    _onBoardingContainer();
    _homeContainer();
    _settingsContainer();
    _ratingContainer();
    _geminiContainer();
  }
}
