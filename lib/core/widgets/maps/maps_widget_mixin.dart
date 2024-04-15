part of 'maps_widget.dart';

mixin MapsWidgetMixin on State<MapsWidget> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  void dispose() {
    _controller.future.then((controller) {
      controller.dispose();
    });
    super.dispose();
  }

  Future<String> _loadMapStyle() async {
    return rootBundle.loadString(JsonConst.instance.darkModeMapsStyle);
  }
}
