import 'package:flutter/widgets.dart';

class SizeConst {
  /// sample width of XYZ = xyz

  static const double sampleWidth = 0;
  static const double sampleHeight = 0;

  ///Width Factor
  static double widthFactor = 1;

  ///Height Factor
  static double heightFactor = 1;

  ///

  static const double appLogoSize = 50;

  ///

  static const double appBarHeight = 48;
  static const double appBarIconHeight = 30;
  static const double bottomNavBarHeight = 70;

  /// Icons

  static const double smallestIconSize = 10;
  static const double smallIconSize = 12;
  static const double mediumIconSize = 16;
  static const double bigIconSize = 20;
  static const double biggestIconSize = 24;
  static const double largeIconSize = 30;
  static const double largestIconSize = 40;
  static const double hugeIconSize = 50;

  ///BottomNavBar Size

  static double bnbHeight = 64;

  /// Images

  static const double smallestImage = 32;
  static const double smallImage = 40;
  static const double mediumImage = 54;
  static const double largeImage = 72;
  static const double largestImage = 96;

  ///Inputs

  static double formFieldHeight = 72;
  static const double cursorHeight = 24;
  static const double textFieldIconHeight = 16;
  static const double textFieldIconWidth = 21;

  /// Buttons

  static const double elevatedButtonSmallHeight = 36;
  static const double elevatedButtonMediumHeight = 54;
  static const double elevatedButtonBigHeight = 64;
  static const double elevatedButtonMaxHeight = 80;
  static const double elevatedButtonMinWidth = 180;
  static const double elevatedButtonMaxWidth = 540;

  static const double outlinedTextButtonMediumHeight = 24;

  ///CircularProgressIndicator
  static const double circularProgressIndicatorWidth = 2;

  /// TILES
  static const double smokingTileHeight = 132;
  static const double rankingTileTopHeight = 64;
  static const double rankingTileHeight = 50;

  /// Picker
  static const double iOSPickerHeight = 250;

  static double get heightFactorMax1 => heightFactor > 1 ? 1 : heightFactor;

  static double get widthFactorMax1 => widthFactor > 1 ? 1 : widthFactor;

  static SizedBox dynamicBoxHeight(double size) =>
      SizedBox(height: size * heightFactor);

  static SizedBox dynamicBoxWidth(double size) =>
      SizedBox(width: size * widthFactor);

  static double dynamicHeight(double size) =>
      heightFactor > 1.3 ? size : size * heightFactor;

  static double dynamicWidth(double size) =>
      widthFactor > 1.4 ? size : size * widthFactor;
}
