part of 'maps_widget.dart';

mixin MapsWidgetMixin on State<MapsWidget> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  String? _mapStyle;

  bool _loaded = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setMapStyle();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.future.then((controller) {
      controller.dispose();
    });
    super.dispose();
  }

  Future<void> _setMapStyle() async {
    _mapStyle =
        await rootBundle.loadString(JsonConst.instance.darkModeMapsStyle);
    setState(() {
      _loaded = true;
    });
  }
}
