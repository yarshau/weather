import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_uk.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('uk')
  ];

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'LOCATION'**
  String get location;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'MAP'**
  String get map;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'WEATHER'**
  String get search;

  /// No description provided for @typeCity.
  ///
  /// In en, this message translates to:
  /// **'Type city name...'**
  String get typeCity;

  /// No description provided for @lostInternet.
  ///
  /// In en, this message translates to:
  /// **'Lost Internet'**
  String get lostInternet;

  /// No description provided for @pleaseCheck.
  ///
  /// In en, this message translates to:
  /// **'Please,\n check your internet connection..'**
  String get pleaseCheck;

  /// No description provided for @searchWeather.
  ///
  /// In en, this message translates to:
  /// **'Search weather forecast by city'**
  String get searchWeather;

  /// No description provided for @suchCityNotFound.
  ///
  /// In en, this message translates to:
  /// **'Such city was not found'**
  String get suchCityNotFound;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again...'**
  String get tryAgain;

  /// No description provided for @maxTemp.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get maxTemp;

  /// No description provided for @minTemp.
  ///
  /// In en, this message translates to:
  /// **'Min'**
  String get minTemp;

  /// No description provided for @avTemp.
  ///
  /// In en, this message translates to:
  /// **'Av'**
  String get avTemp;

  /// No description provided for @timeZone.
  ///
  /// In en, this message translates to:
  /// **'TimeZone'**
  String get timeZone;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error '**
  String get error;

  /// No description provided for @freeVersion.
  ///
  /// In en, this message translates to:
  /// **'Free version of App is not supporting such map view \n Please, try again with more accuracy'**
  String get freeVersion;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @valueCant.
  ///
  /// In en, this message translates to:
  /// **'Value Can\'t Be Empty'**
  String get valueCant;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'uk': return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
