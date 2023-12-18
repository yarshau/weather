import 'package:weather_app/models/weather_forecast_model/weather_model.dart';

abstract class RemoteWeatherDataSource {
  Future<WeatherModel?> getForecastByCity(String city);
}
