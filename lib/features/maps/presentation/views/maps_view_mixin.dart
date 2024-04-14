part of 'maps_view.dart';

mixin MapsViewMixin on State<MapsView> {
  final CameraPosition _cameraPosition = const CameraPosition(
    target: LatLng(41.025, 28.889),
    zoom: 16
  );
}
