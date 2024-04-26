import 'package:flutter/material.dart';

class RadiusConst {
  static BorderRadius bottomNavBar = const BorderRadius.only(
    topLeft: Radius.circular(14),
    topRight: Radius.circular(14),
  );
  static BorderRadius listTile = BorderRadius.circular(16);
  static BorderRadius gridTile = BorderRadius.circular(8);

  /// Radius by size
  static BorderRadius smallestRadius = BorderRadius.circular(3);
  static BorderRadius smallRadius = BorderRadius.circular(5);
  static BorderRadius mediumRadius = BorderRadius.circular(7);
  static BorderRadius bigRadius = BorderRadius.circular(9);
  static BorderRadius largeRadius = BorderRadius.circular(12);
  static BorderRadius largerRadius = BorderRadius.circular(16);
  static BorderRadius largestRadius = BorderRadius.circular(20);
  static BorderRadius extraLargeRadius = BorderRadius.circular(28);
  static BorderRadius extraLargestRadius = BorderRadius.circular(36);

  /// Circular
  static BorderRadius circular5 = BorderRadius.circular(5);
  static BorderRadius circular25 = BorderRadius.circular(25);
  static BorderRadius circular50 = BorderRadius.circular(50);
  static BorderRadius circular75 = BorderRadius.circular(75);
  static BorderRadius circular100 = BorderRadius.circular(100);

  /// Buttons
  static BorderRadius elevatedButton = BorderRadius.circular(12);
  static BorderRadius checkBox = BorderRadius.circular(8);

  /// Others
  static const Radius scrollBar = Radius.circular(16);

  static const Radius top = Radius.circular(16);
}

enum RadiusConstEnum {
  /// 2
  lowest(2),

  /// 4
  low(4),

  /// 8
  medium(8),

  /// 12
  high(12),

  /// 16
  highest(16),

  /// 20
  extraHigh(20),

  /// 24
  extraHighest(24),

  /// 28
  large(28),

  /// 32
  largest(32),

  /// 40
  extraLarge(40),

  /// 50
  extraLargest(50);

  const RadiusConstEnum(this.value);

  final double value;

  Radius get all => Radius.circular(value);

  BorderRadius get circular => BorderRadius.circular(value);

  BorderRadius get top => BorderRadius.only(
        topLeft: Radius.circular(value),
        topRight: Radius.circular(value),
      );

  BorderRadius get bottom => BorderRadius.only(
        topLeft: Radius.circular(value),
        topRight: Radius.circular(value),
      );

  BorderRadius get topLeft =>
      BorderRadius.only(topLeft: Radius.circular(value));

  BorderRadius get topRight =>
      BorderRadius.only(topRight: Radius.circular(value));

  BorderRadius get bottomLeft =>
      BorderRadius.only(bottomLeft: Radius.circular(value));

  BorderRadius get bottomRight =>
      BorderRadius.only(bottomRight: Radius.circular(value));
}
