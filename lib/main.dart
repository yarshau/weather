import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/colors.dart';
import 'package:weather_app/presentation/bloc/localization_bloc/localization_bloc.dart';
import 'package:weather_app/presentation/screens/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app/providers.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: BlocBuilder<LocalizationBloc, LocalizationState>(
        builder: (context, state) {
          return MaterialApp(
            locale: state.locale,
            debugShowCheckedModeBanner: false,
            supportedLocales: const [Locale('en'), Locale('uk')],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSeed(seedColor: AppColors.mainAccent),
            ),
            home: const Material(
              child: HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
