
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'allowed_polygon.dart';

class AllowedPlaces {
  static Set<Polygon> get places {
    return {
      const AllowedPolygon(polygonId: PolygonId('4'), points: [
        LatLng(41.02830606418646, 28.88976454633117),
        LatLng(41.02825778071794, 28.88971332472542),
        LatLng(41.02823311667466, 28.88976109026768),
        LatLng(41.02815164049526, 28.88978134864667),
        LatLng(41.02798566712374, 28.88962749206002),
        LatLng(41.0279246760055, 28.88974142589567),
        LatLng(41.02817514723363, 28.8899811437664),
        LatLng(41.02830606418646, 28.88976454633117),
      ],),
      const AllowedPolygon(polygonId: PolygonId('A'), points: [
        LatLng(41.02921304154488, 28.88980300176171),
        LatLng(41.02922935612648, 28.88981296218582),
        LatLng(41.02925788736294, 28.88969980392126),
        LatLng(41.02924202297479, 28.88969300473185),
      ],),
      const AllowedPolygon(
        polygonId: PolygonId('B'),
        points: [
          LatLng(41.0290927885707, 28.89034614535322),
          LatLng(41.02911065262907, 28.89035933050381),
          LatLng(41.02914723069048, 28.89027644720622),
          LatLng(41.0291304171135, 28.89026428989015),
        ],
      ),
      const AllowedPolygon(polygonId: PolygonId('C'), points: [
        LatLng(41.02889293481606, 28.89092102771295),
        LatLng(41.02890414551607, 28.89093490539304),
        LatLng(41.02894962786519, 28.8908717259551),
        LatLng(41.02893921916072, 28.8908564764261),
      ],),
      const AllowedPolygon(polygonId: PolygonId('D'), points: [
        LatLng(41.02841345708212, 28.89113406779613),
        LatLng(41.02842198473776, 28.89115034898338),
        LatLng(41.02847900655509, 28.8910976058022),
        LatLng(41.02847078401543, 28.89108173833826),
      ],),
      const AllowedPolygon(
        polygonId: PolygonId('BuyukEv'),
        points: [
          LatLng(41.02673036099898, 28.88893369239904),
          LatLng(41.02674358928179, 28.8889130096029),
          LatLng(41.02671968812608, 28.88888790080986),
          LatLng(41.02670734457661, 28.88890894140624),
          LatLng(41.02673036099898, 28.88893369239904),
        ],
      ),
      // const AllowedPolygon(polygonId: PolygonId('9'), points: []),
    };
  }
}
