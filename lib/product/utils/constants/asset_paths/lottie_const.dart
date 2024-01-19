class LottieConst {
  static LottieConst? _instance;

  static LottieConst get instance {
    return _instance ??= LottieConst._init();
  }

  LottieConst._init();

  String lottie(String name) => 'assets/lottie/$name.json';

  String get lungs => lottie('lungs_animation');

}
