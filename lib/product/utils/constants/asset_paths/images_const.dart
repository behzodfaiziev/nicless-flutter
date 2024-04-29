class ImagesConst {
  ImagesConst._init();

  static ImagesConst? _instance;

  static ImagesConst get instance {
    return _instance ??= ImagesConst._init();
  }

  String image(String name) => 'assets/images/$name.png';

  String get cigarette => image('cigarette');

  String get vozol5KBlueRazz => image('vozol_5k_blue_razz');

  String get vozol5KMangoPeach => image('vozol_5k_mango_peach');

  String get vozol10KForestBerry => image('vozol_10k_forest_berry');

  String get logo => image('logo');

  String get ratingFirst => image('rating_first');

  String get ratingSecond => image('rating_second');

  String get ratingThird => image('rating_third');
}
