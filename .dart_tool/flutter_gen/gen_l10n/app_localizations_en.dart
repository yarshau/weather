import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get location => 'LOCATION';

  @override
  String get map => 'MAP';

  @override
  String get search => 'WEATHER';

  @override
  String get typeCity => 'Type city name...';

  @override
  String get lostInternet => 'Lost Internet';

  @override
  String get pleaseCheck => 'Please,\n check your internet connection..';

  @override
  String get searchWeather => 'Search weather forecast by city';

  @override
  String get suchCityNotFound => 'Such city was not found';

  @override
  String get tryAgain => 'Try again...';

  @override
  String get maxTemp => 'Max';

  @override
  String get minTemp => 'Min';

  @override
  String get avTemp => 'Av';

  @override
  String get timeZone => 'TimeZone';

  @override
  String get loading => 'Loading';

  @override
  String get error => 'Error ';

  @override
  String get freeVersion => 'Free version of App is not supporting such map view \n Please, try again with more accuracy';

  @override
  String get language => 'Language';

  @override
  String get valueCant => 'Value Can\'t Be Empty';
}
