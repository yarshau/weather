import 'dart:ui';

abstract class LocalizationService {
  Future<Locale> fetchLocale();

  Future<void> setLocale(Locale locale);
}
