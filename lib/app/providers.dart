import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/local/localization/localization_service_impl.dart';
import 'package:weather_app/domain/localization_repository/localization_repository.dart';
import 'package:weather_app/domain/localization_repository/localization_repository_impl.dart';
import 'package:weather_app/domain/location_repository/location_repository_impl.dart';
import 'package:weather_app/domain/weather_repository/weather_repository_impl.dart';
import 'package:weather_app/presentation/bloc/internet_connection_bloc/internet_connection_bloc.dart';
import 'package:weather_app/presentation/bloc/localization_bloc/localization_bloc.dart';
import 'package:weather_app/presentation/bloc/map_weather_bloc/map_weather_bloc.dart';
import 'package:weather_app/presentation/bloc/search_bloc/search_bloc.dart';

class Providers extends StatefulWidget {
  final Widget child;

  const Providers({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<Providers> createState() => _ProvidersState();
}

class _ProvidersState extends State<Providers> {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => WeatherRepositoryImpl(),
        ),
        RepositoryProvider(
          create: (context) => LocationRepositoryImpl(),
        ),
        RepositoryProvider<LocalizationRepository>(
          create: (context) => LocalizationRepositoryImpl(
            db: LocalizationServiceImpl(),
          ),
        )
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => LocalizationBloc(
            localizationRepository: context.read<LocalizationRepository>(),
          )..add(const LocalizationEvent.initial()),
        ),
        BlocProvider(
          create: (context) => SearchBloc(
            weatherRepository: context.read<WeatherRepositoryImpl>(),
          ),
          lazy: false,
        ),
        BlocProvider(create: (context) => InternetConnectionBloc()),
        BlocProvider(
          create: (context) => MapWeatherBloc(
            weatherRepository: context.read<WeatherRepositoryImpl>(),
            locationRepository: context.read<LocationRepositoryImpl>(),
          ),
        ),
      ], child: widget.child),
    );
  }
}
