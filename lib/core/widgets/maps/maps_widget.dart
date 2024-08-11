import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../product/utils/constants/asset_paths/json_const.dart';
import '../indicator/base_adaptive_cpi.dart';

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
    return _loaded == false
        ? const BaseAdaptiveCPI()
        : GoogleMap(
            initialCameraPosition: widget.initialCameraPosition,
            myLocationEnabled: true,
            buildingsEnabled: false,
            style: _mapStyle,
            // mapType: MapType.satellite,
            // zoomControlsEnabled: false,
            polygons: widget.polygons,
            onMapCreated: (controller) async {
              _controller.complete(controller);
            },
          );
  }
}
