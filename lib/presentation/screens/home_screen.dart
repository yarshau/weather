import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/colors.dart';
import 'package:weather_app/presentation/bloc/internet_connection_bloc/internet_connection_bloc.dart';
import 'package:weather_app/presentation/bloc/localization_bloc/localization_bloc.dart';
import 'package:weather_app/presentation/widgets/custom_text_widget.dart';
import 'package:weather_app/presentation/widgets/weather_tab.dart';
import 'package:weather_app/presentation/widgets/map_weather_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;
  String dropdownValue = 'en';

  @override
  void initState() {
    super.initState();
    Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) async {
        context
            .read<InternetConnectionBloc>()
            .add(const InternetConnectionEvent.checkInternet());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<InternetConnectionBloc, InternetConnectionState>(
        builder: (context, state) {
          return state.when(
            lostInternet: () {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: AppLocalizations.of(context)!.lostInternet,
                      fontSize: 25,
                      textAlign: TextAlign.center,
                    ),
                    CustomText(
                      text: AppLocalizations.of(context)!.pleaseCheck,
                      color: AppColors.mainAccent,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            },
            connectedInternet: () {
              return PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  MapWeatherTab(
                    pageController: pageController,
                    onSelectedIndexChanged: (index) {
                      setState(
                        () {
                          _selectedIndex = index;
                        },
                      );
                    },
                  ),
                  const WeatherTab()
                ],
              );
            },
          );
        },
      ),
      drawer: Drawer(
          child: Container(
        color: AppColors.mainLightAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: AppLocalizations.of(context)!.language),
            DropdownButton<String>(
              focusColor: Colors.white,
              icon: const Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 15,
                  color: AppColors.darkGrey,
                ),
              ),
              underline: const SizedBox(),
              value: context.read<LocalizationBloc>().state.locale ==
                      const Locale('en')
                  ? 'ENG'
                  : 'UK',
              borderRadius: BorderRadius.circular(10),
              items: <String>[
                'ENG',
                'UK',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: CustomText(text: value));
              }).toList(),
              onChanged: (String? newValue) {
                final locale = newValue!.toLowerCase() == 'eng' ? 'en' : 'uk';
                context
                    .read<LocalizationBloc>()
                    .add(LocalizationEvent.changeLang(locale: Locale(locale)));
              },
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (page) {
          pageController.animateToPage(page,
              duration: const Duration(milliseconds: 100), curve: Curves.ease);
          setState(
            () {
              _selectedIndex = page;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.map),
              label: AppLocalizations.of(context)!.map),
          BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: AppLocalizations.of(context)!.search)
        ],
      ),
    );
  }
}
