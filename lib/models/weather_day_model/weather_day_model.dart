import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_day_model.freezed.dart';

part 'weather_day_model.g.dart';

@freezed
class WeatherDayModel with _$WeatherDayModel {
  factory WeatherDayModel({
    required String datetime,
    required num tempmax,
    required num tempmin,
    required num temp,
    required String conditions,
    required String icon,
  }) = _WeatherDayModel;

  factory WeatherDayModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDayModelFromJson(json);
}
