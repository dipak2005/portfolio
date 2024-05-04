// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData(bool light, BuildContext context) {
    return light ? PortFolioTheme.lightTheme : PortFolioTheme.darkTheme;
  }
}

class PortFolioTheme {
  static final instance = PortFolioTheme._();

  PortFolioTheme._();

  static final lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: lightBgColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(backgroundColor: lightBgColor),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          animationDuration: Duration(milliseconds: 800),
          textStyle: MaterialStatePropertyAll(
            TextStyle(color: lightThemeTextColor),
          ),
        ),
      ));

  static final darkTheme = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    primaryColor: primaryColor,
brightness: Brightness.dark,
    scaffoldBackgroundColor: blackColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        animationDuration: Duration(milliseconds: 800),
        textStyle: MaterialStatePropertyAll(
          TextStyle(color: darkThemeTextColor),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(backgroundColor: darkBgColor),
  );

  static Brightness get currentSystemBrightness =>
      PortFolioTheme.currentSystemBrightness;
}

// theme related extension

extension ThemeExt on ThemeData {
  //
  Color get appBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);

//
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF3D3125)
      : const Color(0xFFFFF8F2);

  Color get blueColor => skyBlueColor;

  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBlack;

  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradiant;
}
