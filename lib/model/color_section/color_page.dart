// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF09FBD3);
Color skyBlueColor =  Color(0xff3ADCFF);

// theme was light
Color lightThemeTextColor = const Color(0xff2B2B2B);
// them was dark
Color darkThemeTextColor = Colors.white;
Color blackColor = Colors.black;

Color lightBgColor=Colors.white;
Color darkBgColor=Color(0xFF2B2B2B);
LinearGradient bluePurple = const LinearGradient(colors: [
  Color(0xff3ADCFF),
  Color(0xff774aff),
], begin: Alignment.centerLeft, end: Alignment.centerRight);

LinearGradient grayBlack = const LinearGradient(
  colors: [
    Color(0xff2E2D36),
    Color(0xff11101D),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const grayWhite = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFFFFF), Color(0xFFF3F2FF)],
);

LinearGradient buttonGradiant = LinearGradient(
  colors: [Color(0xff7DE7EB), Color(0xff33BBCF)],
);

const contactGradiant = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xff2E2D36),
    Color(0xff11101D),
  ],
);

BoxShadow primaryColorShadow = BoxShadow(
  color: primaryColor.withOpacity(0.1),
  blurRadius: 12,
  offset: Offset(0.7, 0.7),
);

BoxShadow blackColorShadow = BoxShadow(
  color: Colors.black.withOpacity(0.3),
  blurRadius: 12.0,
  offset: const Offset(0.0, 0.0),
);
