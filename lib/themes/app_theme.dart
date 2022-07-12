import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.teal;

  static ThemeData appTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(backgroundColor: primaryColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(selectedItemColor: primaryColor),
  );
}
