import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../core/widgets/maps/maps_widget.dart';
import '../../../../product/utils/constants/maps/allowed_places/allowed_places.dart';
import '../../../../product/utils/constants/maps/prohibited_places/prohibited_places.dart';
import '../../../../product/widgets/button/pop_button.dart';

part 'maps_view_mixin.dart';

@RoutePage()
class MapsView extends StatefulWidget {
  const MapsView({super.key});

  @override
  State<MapsView> createState() => _MapsViewState();
}

class _MapsViewState extends State<MapsView> with MapsViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: 'Maps',
        leading: PopButton(),
      ),
      body: MapsWidget(
        polygons: {...ProhibitedPlaces.places, ...AllowedPlaces.places},
        initialCameraPosition: _cameraPosition,
      ),
    );
  }
}
