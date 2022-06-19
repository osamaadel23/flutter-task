import 'package:flutter/material.dart';

class Themes {
  static ThemeData themeLight() => ThemeData(
        dialogBackgroundColor: Colors.white,
        brightness: Brightness.light,
        canvasColor: Colors.black,
        primaryColor: const Color(0xffDE263B),
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xffF5F6FA),
        disabledColor: const Color(0xffe9e9e9),
        errorColor: const Color(0xFFD32F2F),
        hintColor: const Color(0xff9099A4),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        indicatorColor: const Color(0xff2CB9B0),
        primaryIconTheme: const IconThemeData(
          color: Colors.white,
        ),
      );
}
