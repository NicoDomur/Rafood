import 'package:flutter/material.dart';

class Temas {
  static const Color primarioLight = Colors.white; //tema general aplicacion
  static const Color secundarioLight = Colors.teal;
  static const Color back = Colors.black; //tema fuente
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(onSurface: Colors.white),
    primaryColor: primarioLight,
    appBarTheme: const AppBarTheme(
      foregroundColor: secundarioLight,
      elevation: 0,
      backgroundColor: primarioLight,
      surfaceTintColor: primarioLight,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.transparent,
      foregroundColor: secundarioLight,
      highlightElevation: 0,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: secundarioLight,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
