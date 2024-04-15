import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AllowedPolygon extends Polygon {
  const AllowedPolygon({
    required super.polygonId,
    required super.points,
    super.strokeWidth = 2,
    super.strokeColor = Colors.green,
    super.fillColor = const Color(0x4D00FF00),
  });
}
