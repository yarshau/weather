import 'dart:ui';

import 'package:weather_app/data/local/localization/localization_service.dart';

import 'localization_repository.dart';

class LocalizationRepositoryImpl implements LocalizationRepository {
  final LocalizationService db;

  @override
  Future<Locale> fetchLocale() => db.fetchLocale();

  @override
  Future<void> setLocale(Locale locale) => db.setLocale(locale);

  const LocalizationRepositoryImpl({
    required this.db,
  });
}
