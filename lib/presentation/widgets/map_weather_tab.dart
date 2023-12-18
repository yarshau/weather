import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app/presentation/bloc/map_weather_bloc/map_weather_bloc.dart';
import 'package:weather_app/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:weather_app/presentation/widgets/custom_text_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MapWeatherTab extends StatefulWidget {
  const MapWeatherTab({
    required this.pageController,
    required this.onSelectedIndexChanged,
    Key? key,
  }) : super(key: key);
  final PageController pageController;
  final Function(int) onSelectedIndexChanged;

  @override
  State<MapWeatherTab> createState() => _MapWeatherScreen();
}

class _MapWeatherScreen extends State<MapWeatherTab> {
  static const _center = LatLng(50.450001, 30.523333);
  late GoogleMapController mapController;
  late LatLng position;
  bool _isVisible = false;
  bool _isVisibleForecast = false;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    position = const LatLng(50.450001, 30.523333);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapWeatherBloc, MapWeatherState>(
      builder: (context, state) {
        return Stack(
          children: [
            GoogleMap(
              markers: {
                Marker(
                  markerId: const MarkerId('Weather Marker'),
                  position: LatLng(position.latitude, position.longitude),
                  visible: _isVisible,
                  onTap: () {
                    setState(
                      () {
                        _isVisibleForecast = true;
                      },
                    );
                  },
                )
              },
              onTap: (_) {
                setState(
                  () {
                    _isVisible = false;
                    _isVisibleForecast = false;
                  },
                );
              },
              onLongPress: (latLnt) async {
                position = latLnt;
                context
                    .read<MapWeatherBloc>()
                    .add(MapWeatcherEvent.searchLocation(latLng: latLnt));
                setState(
                  () {
                    _isVisible = true;
                  },
                );
              },
              onMapCreated: _onMapCreated,
              initialCameraPosition:
                  const CameraPosition(target: _center, zoom: 9),
            ),
            Positioned.fill(
              top: 100,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                        text: AppLocalizations.of(context)!.location),
                  ),
                ),
              ),
            ),
            if (_isVisibleForecast)
              Positioned(
                bottom: 76,
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: state.map(
                    initial: (_) {
                      return Column(
                        children: [
                          CustomText(
                            text: AppLocalizations.of(context)!.loading,
                          ),
                          const CircularProgressIndicator()
                        ],
                      );
                    },
                    error: (_) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          CustomText(
                            text: AppLocalizations.of(context)!.error,
                            textAlign: TextAlign.center,
                          ),
                          CustomText(
                            text: AppLocalizations.of(context)!.freeVersion,
                            textAlign: TextAlign.center,
                            fontSize: 13,
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: SvgPicture.asset(
                              'assets/animated/weather.svg',
                            ),
                          ),
                          //search.svg
                        ],
                      );
                    },
                    success: (state) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            context.read<SearchBloc>().add(
                                SearchEvent.showDataFromMap(
                                    weatherModel: state.weatherModel));
                            widget.pageController.animateToPage(1,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.ease);
                            widget.onSelectedIndexChanged(1);
                          },
                          child: Stack(
                            children: [
                              Positioned(
                                right: 0,
                                top: 0,
                                child: SvgPicture.asset(
                                  'assets/animated/${state.weatherModel.days[0].icon}.svg',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Positioned(
                                child: Column(
                                  children: [
                                    CustomText(
                                      text: state.weatherModel.resolvedAddress,
                                    ),
                                    CustomText(
                                      text:
                                          ('temp: ${state.weatherModel.days[0].temp.toString()}˚'),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    CustomText(
                                        text: state
                                            .weatherModel.days[0].conditions
                                            .toString()),
                                    CustomText(
                                      text: state.weatherModel.description,
                                      fontSize: 14,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
