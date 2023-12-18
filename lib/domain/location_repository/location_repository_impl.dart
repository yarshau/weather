import 'dart:developer';

import 'package:geocode/geocode.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app/domain/location_repository/location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  final geoCode = GeoCode();

  @override
  Future<String?> getLocation(LatLng position) async {
    try {
      final address = await geoCode.reverseGeocoding(
        latitude: position.latitude,
        longitude: position.longitude,
      );

      return address.city;
    } catch (error) {
      log('Catch getLocation Error $error');
    }
    return null;
  }
}
