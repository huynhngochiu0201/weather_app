import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/page/home/widget/home_detail.dart';
import 'package:weather_app/page/home/widget/home_icon.dart';
import 'package:weather_app/page/home/widget/home_location.dart';
import 'package:weather_app/page/home/widget/home_n_do.dart';
import 'package:weather_app/provider/weather_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff1D6CF3),
              Color(0xff19D2FE),
            ],
          ),
        ),
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          initialData: null,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return Container(
                child: const Text('no data'),
              );
            }
            WeatherData data = snapshot.data as WeatherData;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeIcon(nameIcon: data.weather[0].main),
                HomeND(temp: data.main.temp),
                Homelocation(
                  nameLocation: data.name,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                HomeDetail(
                  humidity: data.main.humidity,
                  speedWind: data.wind.speed,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
