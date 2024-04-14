part of 'maps_widget.dart';

mixin MapsWidgetMixin on State<MapsWidget> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
}
