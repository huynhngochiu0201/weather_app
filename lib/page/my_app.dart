import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/botom_navigation_ct/botom_custom.dart';
import 'package:weather_app/page/config/them_custom.dart';
import 'package:weather_app/provider/weather_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        theme: ThemCusTom.themeLight,
        debugShowCheckedModeBanner: false,
        home: const BotomNavigationCustom(),
      ),
    );
  }
}
