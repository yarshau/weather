import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather_day_model/weather_day_model.dart';

part 'weather_model.freezed.dart';

part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    required String resolvedAddress,
    required String description,
    required String timezone,
    required double latitude,
    required double longitude,
    required double tzoffset,
    required List<WeatherDayModel> days,
  }) = _WeatherData;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
