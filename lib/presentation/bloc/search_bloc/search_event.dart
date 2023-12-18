part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _StartedEvent;

  const factory SearchEvent.showDataFromMap(
      {required WeatherModel weatherModel}) = _ShowDataFromMap;

  const factory SearchEvent.loadData({required String query}) = _LoadDataEvent;
}
