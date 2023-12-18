part of 'map_weather_bloc.dart';

@freezed
class MapWeatherState with _$MapWeatherState {
  const factory MapWeatherState.initial() = _Initial;

  const factory MapWeatherState.error() = _Error;

  const factory MapWeatherState.success({required WeatherModel weatherModel}) =
      _Success;
}
