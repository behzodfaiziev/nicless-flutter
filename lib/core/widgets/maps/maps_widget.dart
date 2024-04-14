import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'maps_widget_mixin.dart';

class MapsWidget extends StatefulWidget {
  const MapsWidget({
    required this.initialCameraPosition,
    super.key,
  });

  final CameraPosition initialCameraPosition;

  @override
  State<MapsWidget> createState() => _MapsWidgetState();
}

class _MapsWidgetState extends State<MapsWidget> with MapsWidgetMixin {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: widget.initialCameraPosition,
      onMapCreated: _controller.complete,
    );
  }
}
