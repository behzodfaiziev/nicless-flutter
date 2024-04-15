class JsonConst {
  static JsonConst? _instance;

  static JsonConst get instance {
    return _instance ??= JsonConst._init();
  }

  JsonConst._init();

  String json(String name) => 'assets/json/$name.json';

  String get darkModeMapsStyle => json('maps_dark_mode_style');

}
