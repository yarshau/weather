import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/weather_repository/weather_repository.dart';
import 'package:weather_app/models/weather_forecast_model/weather_model.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  WeatherRepository weatherRepository;

  SearchBloc({required this.weatherRepository})
      : super(const SearchState.initial()) {
    on<SearchEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(SearchEvent event, Emitter<SearchState> emit) =>
      event.map(
          started: (e) => _started(e, emit),
          loadData: (e) => _loadDataEvent(e, emit),
          showDataFromMap: (e) => _showDataFromMap(e, emit));

  Future<void> _started(SearchEvent event, Emitter<SearchState> emit) async {
    emit(const SearchState.initial());
  }

  Future<void> _showDataFromMap(
      _ShowDataFromMap event, Emitter<SearchState> emit) async {
    emit(SearchState.success(weatherModel: event.weatherModel));
  }

  Future<void> _loadDataEvent(
      _LoadDataEvent event, Emitter<SearchState> emit) async {
    emit(const SearchState.loading());
    final WeatherModel? forecast =
        await weatherRepository.getForecast(event.query);
    if (forecast != null) {
      emit(SearchState.success(weatherModel: forecast));
    } else {
      emit(const SearchState.error());
    }
  }
}
