// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDayModelImpl _$$WeatherDayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherDayModelImpl(
      datetime: json['datetime'] as String,
      tempmax: json['tempmax'] as num,
      tempmin: json['tempmin'] as num,
      temp: json['temp'] as num,
      conditions: json['conditions'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherDayModelImplToJson(
        _$WeatherDayModelImpl instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'tempmax': instance.tempmax,
      'tempmin': instance.tempmin,
      'temp': instance.temp,
      'conditions': instance.conditions,
      'icon': instance.icon,
    };
