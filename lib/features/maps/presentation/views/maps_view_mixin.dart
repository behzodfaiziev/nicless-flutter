part of 'maps_view.dart';

mixin MapsViewMixin on State<MapsView> {
  final CameraPosition _cameraPosition = const CameraPosition(
    target: LatLng(41.02599, 28.890006),
    zoom: 16,
  );
}
