part of 'map_weather_bloc.dart';

@freezed
class MapWeatcherEvent with _$MapWeatcherEvent {
  const factory MapWeatcherEvent.started() = _Started;

  const factory MapWeatcherEvent.searchLocation({required LatLng latLng}) =
      _SearchLocation;
}
