import 'package:flutter/material.dart';

class ThemCusTom {
  static ThemeData themeLight = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: Colors.white)));
}
