class SVGConst {
  static SVGConst? _instance;

  static SVGConst get instance {
    return _instance ??= SVGConst._init();
  }

  SVGConst._init();

  String toSvg(String name) => 'assets/icons/svg/$name.svg';

  /// Logo

  String get logo => toSvg('logo/logo');

  /// Icons

}
