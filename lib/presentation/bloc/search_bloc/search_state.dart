part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState.initial() = _Initial;

  const factory SearchState.error() = _Error;

  const factory SearchState.loading() = _Loading;

  const factory SearchState.success({required WeatherModel weatherModel}) =
      _Success;
}
