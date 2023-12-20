class ImagesConst {
  static ImagesConst? _instance;

  static ImagesConst get instance {
    return _instance ??= ImagesConst._init();
  }

  ImagesConst._init();

  // String image(String name) => 'assets/images/$name.png';
  //
  // String get first => image('first');
}
