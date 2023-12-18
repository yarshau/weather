import 'dart:ui';

abstract class LocalizationRepository {
  Future<Locale> fetchLocale();

  Future<void> setLocale(Locale locale);
}
