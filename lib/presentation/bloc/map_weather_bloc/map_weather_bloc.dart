import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app/domain/location_repository/location_repository.dart';
import 'package:weather_app/domain/weather_repository/weather_repository.dart';
import 'package:weather_app/models/weather_forecast_model/weather_model.dart';

part 'map_weather_event.dart';

part 'map_weather_state.dart';

part 'map_weather_bloc.freezed.dart';

class MapWeatherBloc extends Bloc<MapWeatcherEvent, MapWeatherState> {
  MapWeatherBloc(
      {required this.weatherRepository, required this.locationRepository})
      : super(const MapWeatherState.initial()) {
    on<MapWeatcherEvent>(_mapEventToState);
  }

  WeatherModel? forecast;
  WeatherRepository weatherRepository;
  LocationRepository locationRepository;

  Future<void> _mapEventToState(
          MapWeatcherEvent event, Emitter<MapWeatherState> emit) =>
      event.map(
          started: (e) => _started(e, emit),
          searchLocation: (e) => _searchLocation(e, emit));

  Future<void> _started(
      MapWeatcherEvent event, Emitter<MapWeatherState> emit) async {
    emit(const MapWeatherState.initial());
  }

  Future<void> _searchLocation(
    _SearchLocation event,
    Emitter<MapWeatherState> emit,
  ) async {
    emit(const MapWeatherState.initial());
    String? city = await locationRepository.getLocation(event.latLng);
    if (city?.isNotEmpty == true) {
      // Тут вже можна застосувати "!" оскільки відштовхуючись від перевірки зверху "city" ніколи не буде null
      if (city!.contains('Throttled')) {
        emit(const MapWeatherState.error());
      } else {
        forecast = await weatherRepository.getForecast(city);
        if (forecast != null) {
          emit(MapWeatherState.success(weatherModel: forecast!));
        } else {
          emit(const MapWeatherState.error());
        }
      }
    } else {
      emit(const MapWeatherState.error());
    }
  }
}
