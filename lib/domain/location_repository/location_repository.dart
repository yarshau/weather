import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class LocationRepository {
  Future<String?> getLocation(LatLng position);
}
