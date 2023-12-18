import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/constants/colors.dart';
import 'package:weather_app/domain/weather_repository/weather_repository.dart';
import 'package:weather_app/domain/weather_repository/weather_repository_impl.dart';
import 'package:weather_app/models/weather_forecast_model/weather_model.dart';
import 'package:weather_app/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:weather_app/presentation/widgets/custom_text_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class WeatherTab extends StatefulWidget {
  const WeatherTab({
    Key? key,
  }) : super(key: key);

  @override
  State<WeatherTab> createState() => _WeatherTabState();
}

class _WeatherTabState extends State<WeatherTab> {
  TextEditingController searchTextEditingController = TextEditingController();
  WeatherRepository weatherRepository = WeatherRepositoryImpl();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SafeArea(
            child: SizedBox(
          height: 20,
        )),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (changes) {
                    if (changes.isEmpty) {
                      context
                          .read<SearchBloc>()
                          .add(const SearchEvent.started());
                    }
                  },
                  controller: searchTextEditingController,
                  onSubmitted: (_) {
                    searchByCity();
                  },
                  decoration: InputDecoration(
                    label: Text(AppLocalizations.of(context)!.typeCity),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    errorText: _validate
                        ? AppLocalizations.of(context)!.valueCant
                        : null,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.mainLightAccent),
                  child: const Icon(Icons.search),
                ),
                onTap: () {
                  searchByCity();
                },
              )
            ],
          ),
        ),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    CustomText(
                        text: AppLocalizations.of(context)!.searchWeather),
                  ],
                );
              },
              loading: () => const Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  CircularProgressIndicator(),
                ],
              ),
              error: () {
                return Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    CustomText(
                        text: AppLocalizations.of(context)!.suchCityNotFound,
                        color: AppColors.mainAccent),
                    CustomText(text: AppLocalizations.of(context)!.tryAgain)
                  ],
                );
              },
              success: (WeatherModel weather) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                            height: 85,
                            child: Stack(children: [
                              Positioned(
                                  left: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.secondaryAccent,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: CustomText(
                                        text: weather.resolvedAddress,
                                        fontSize: 15,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                left: 2,
                                top: 28,
                                width: 400,
                                child: CustomText(
                                  text: weather.description,
                                  fontSize: 15,
                                ),
                              ),
                            ])),
                        listViewWidget(weather)
                      ],
                    ),
                  ),
                );
              },
            );
          },
        )
      ],
    );
  }

  Widget listViewWidget(WeatherModel weather) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        itemCount: weather.days.length > 7 ? 7 : weather.days.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                    color: index % 2 == 1
                        ? AppColors.secondaryAccent
                        : AppColors.mainAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  visualDensity: const VisualDensity(vertical: 3),
                  title: CustomText(
                      text: weather.days[index].conditions, fontSize: 15),
                  leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text:
                                '${AppLocalizations.of(context)!.maxTemp} ${weather.days[index].tempmax.toString()}˚',
                            fontSize: 15),
                        CustomText(
                            text:
                                '${AppLocalizations.of(context)!.minTemp} ${weather.days[index].tempmin.toString()}˚',
                            fontSize: 15),
                        CustomText(
                            text:
                                '${AppLocalizations.of(context)!.avTemp} ${weather.days[index].temp.toString()}˚',
                            fontSize: 15),
                      ]),
                  subtitle: CustomText(
                      text:
                          '${DateFormat('EEEE').format(DateTime.parse(weather.days[index].datetime))} ${weather.days[index].datetime}',
                      fontSize: 18),
                  trailing:
                      // Text(weather.days[index].icon)
                      SvgPicture.asset(
                    'assets/animated/${weather.days[index].icon}.svg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const Divider()
            ],
          );
        },
      ),
    );
  }

  searchByCity() {
    String input = searchTextEditingController.text
        .trim()
        .replaceAll(RegExp(r' \s+'), ' ');
    setState(() {
      _validate = input.isEmpty;
    });
    if (!_validate) {
      context
          .read<SearchBloc>()
          .add(SearchEvent.loadData(query: searchTextEditingController.text));
    }
  }
}
