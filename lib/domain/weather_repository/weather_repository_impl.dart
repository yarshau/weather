import 'package:weather_app/data/remote/data_sources/remote_weather_data_source_impl.dart';
import 'package:weather_app/domain/weather_repository/weather_repository.dart';
import 'package:weather_app/models/weather_forecast_model/weather_model.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final remoteWeatherDataSource = RemoteWeatherDataSource();

  @override
  Future<WeatherModel?> getForecast(String city) async =>
      await remoteWeatherDataSource.getForecastByCity(city);
}
