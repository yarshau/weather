// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDataImpl _$$WeatherDataImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDataImpl(
      resolvedAddress: json['resolvedAddress'] as String,
      description: json['description'] as String,
      timezone: json['timezone'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      tzoffset: (json['tzoffset'] as num).toDouble(),
      days: (json['days'] as List<dynamic>)
          .map((e) => WeatherDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherDataImplToJson(_$WeatherDataImpl instance) =>
    <String, dynamic>{
      'resolvedAddress': instance.resolvedAddress,
      'description': instance.description,
      'timezone': instance.timezone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'tzoffset': instance.tzoffset,
      'days': instance.days,
    };
