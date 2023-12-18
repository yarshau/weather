import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

import 'localization_service.dart';

const String _languageKey = 'language';

class LocalizationServiceImpl implements LocalizationService {
  SharedPreferences? _sharedPreferences;

  Future<SharedPreferences> sharedPreferences() async {
    if (_sharedPreferences == null) {
      _sharedPreferences = await SharedPreferences.getInstance();

      return _sharedPreferences!;
    }

    return _sharedPreferences!;
  }

  @override
  Future<Locale> fetchLocale() async {
    final preferences = await sharedPreferences();

    final locale = preferences.getString(_languageKey);
    if (locale == null) return const Locale("en");

    return switch (locale) {
      "uk" => const Locale("uk"),
      _ => const Locale("en")
    };
  }

  @override
  Future<void> setLocale(Locale locale) async {
    final preferences = await sharedPreferences();

    await preferences.setString(_languageKey, locale.languageCode);
  }
}
