class SVGConst {
  SVGConst._init();

  static SVGConst? _instance;

  static SVGConst get instance {
    return _instance ??= SVGConst._init();
  }

  String toSvg(String name) => 'assets/icons/svg/$name.svg';

  /// Logo

  String get logo => toSvg('logo/logo');

  String get award => toSvg('award');

  String get dumbbell => toSvg('dumbbell');

  String get home => toSvg('home');

  String get settings => toSvg('settings');

  String get share => toSvg('share');

  String get user => toSvg('user');

  String get map => toSvg('map');

  String get question => toSvg('question');

  /// Icons
}
