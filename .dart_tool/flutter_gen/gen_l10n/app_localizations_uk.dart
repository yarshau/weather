import 'app_localizations.dart';

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get location => 'МІСЦЕЗНАХОДЖЕННЯ';

  @override
  String get map => 'КАРТА';

  @override
  String get search => 'ПОГОДА';

  @override
  String get typeCity => 'Введіть назву міста...';

  @override
  String get lostInternet => 'Втрата інтернет-з\'єднання';

  @override
  String get pleaseCheck => 'Будь ласка,\n перевірте ваше інтернет-з\'єднання...';

  @override
  String get searchWeather => 'Пошук прогнозу погоди за містом';

  @override
  String get suchCityNotFound => 'Таке місто не знайдено';

  @override
  String get tryAgain => 'Спробуйте ще раз...';

  @override
  String get maxTemp => 'Макс.';

  @override
  String get minTemp => 'Мін.';

  @override
  String get avTemp => 'Сер.';

  @override
  String get timeZone => 'Часовий пояс';

  @override
  String get loading => 'Завантаження';

  @override
  String get error => 'Помилка ';

  @override
  String get freeVersion => 'Безкоштовна версія додатку не підтримує даний масштаб карти \n Будь ласка, спробуйте ще раз з більшою точністю';

  @override
  String get language => 'Мова';

  @override
  String get valueCant => 'Поле обовʼязкове до заповнення';
}
