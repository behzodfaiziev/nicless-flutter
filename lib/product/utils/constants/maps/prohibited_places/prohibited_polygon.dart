import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ProhibitedPolygon extends Polygon {
  const ProhibitedPolygon({
    required super.polygonId,
    required super.points,
    super.strokeWidth = 2,
    super.strokeColor = Colors.red,
    super.fillColor = const Color(0x4DFF0000),
  });
}
