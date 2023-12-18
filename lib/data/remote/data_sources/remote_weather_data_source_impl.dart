import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_forecast_model/weather_model.dart';

class RemoteWeatherDataSource {
  static const _weatherBaseUrl = 'https://weather.visualcrossing.com';
  static const _weatherAccessKey = 'GETCEZMHPWFVJTRNXBSZMQVZ4';
  static const _weatherContentType = 'json';
  static const _weatherUnitGroup = 'metric';

  final dio = Dio();

  Future<WeatherModel?> getForecastByCity(String city) async {
    log('query: $city');
    final path = 'VisualCrossingWebServices/rest/services/timeline/$city';
    try {
      final Response response = await dio.get(
        '$_weatherBaseUrl/$path',
        queryParameters: {
          'unitGroup': _weatherUnitGroup,
          'key': _weatherAccessKey,
          'contentType': _weatherContentType,
        },
      );
      if (response.statusCode == 200) {
        final weatherModel = WeatherModel.fromJson(response.data);
        return weatherModel;
      } else {
        log('Server Error: ${response.statusCode}');
      }
    } on DioException catch (exception) {
      log('Exception catch: ${exception.error}');
      return null;
    } catch (error) {
      log('Error catch: $error');
      return null;
    }
    return null;
  }
}
