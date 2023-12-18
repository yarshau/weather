part of 'localization_bloc.dart';

class LocalizationState {
  const LocalizationState._({required this.locale});

  final Locale locale;

  factory LocalizationState.localize({Locale? locale}) => LocalizationState._(
        locale: locale ?? const Locale('en'),
      );
}
