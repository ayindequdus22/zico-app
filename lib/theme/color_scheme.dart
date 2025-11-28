import 'package:flutter/material.dart';

class MyColorScheme {
  static Color primaryColor = Color.fromRGBO(37, 99, 235, 1);
  static ColorScheme lightColorScheme =
      ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ).copyWith(
        primary: primaryColor,
        error: Colors.red,
        surface: const Color.fromRGBO(235, 235, 235, 1),
        // surface: Colors.green,
        onPrimaryContainer: const Color.fromRGBO(50, 50, 50, 1),
        primaryContainer: const Color.fromRGBO(217, 217, 217, 1),
        onSurface: Color.fromRGBO(16, 19, 25, 1),
        onSecondaryContainer: Color.fromRGBO(52, 64, 84, 1),
        // onPrimaryContainer: const Color.fromRGBO(44, 44, 44, .6),
      );
}
