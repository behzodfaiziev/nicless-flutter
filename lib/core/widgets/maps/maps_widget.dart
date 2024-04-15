import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../product/utils/constants/asset_paths/json_const.dart';

part 'maps_widget_mixin.dart';

class MapsWidget extends StatefulWidget {
  const MapsWidget({
    required this.initialCameraPosition,
    required this.polygons,
    super.key,
  });

  final CameraPosition initialCameraPosition;
  final Set<Polygon> polygons;

  @override
  State<MapsWidget> createState() => _MapsWidgetState();
}

class _MapsWidgetState extends State<MapsWidget> with MapsWidgetMixin {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: widget.initialCameraPosition,
      myLocationEnabled: true,
      buildingsEnabled: false,
      // mapType: MapType.satellite,
      // zoomControlsEnabled: false,
      polygons: widget.polygons,
      onMapCreated: (controller) async {
        await controller.setMapStyle(await _loadMapStyle());
        _controller.complete(controller);
      },
    );
  }
}
