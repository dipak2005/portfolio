// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:flutter/material.dart';

class PortFolioTheme {
  static final instance = PortFolioTheme._();

  PortFolioTheme._();

  static final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
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
    ),
  );

  static final darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    primaryColor: primaryColor,
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
}

// theme related extension

extension ThemeExt on ThemeData {
  //
  Color get appBarColor => ThemeData.light() == ThemeData.light()
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);

//
  Color get textColor => ThemeData.light() == ThemeData.light()
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);

  Color get blueColor => skyBlueColor;

  Gradient get serviceCard =>
      ThemeData.light() == ThemeData.light() ? grayWhite : grayBlack;

  Gradient get contactCard =>
      ThemeData.light() == ThemeData.light() ? grayWhite : contactGradiant;
}
