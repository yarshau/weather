part of 'localization_bloc.dart';

@freezed
class LocalizationEvent with _$LocalizationEvent {
  const factory LocalizationEvent.initial() = _LocalizatioInitial;

  const factory LocalizationEvent.changeLang({required Locale locale}) =
      _ChangeLang;
}
