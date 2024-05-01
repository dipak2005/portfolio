// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:google_fonts/google_fonts.dart';

List<TyperAnimatedText> desktopList = [
  TyperAnimatedText(
    animationTxt1,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 32),
  ),
  TyperAnimatedText(
    animationTxt2,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 32),
  ),
  TyperAnimatedText(
    animationTxt3,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 32),
  ),
];

List<TyperAnimatedText> tabletList = [
  TyperAnimatedText(
    animationTxt1,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 24),
  ),
  TyperAnimatedText(
    animationTxt2,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 24),
  ),
  TyperAnimatedText(
    animationTxt3,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 24),
  ),
];

List<TyperAnimatedText> mobileList = [
  TyperAnimatedText(
    animationTxt1,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 16),
  ),
  TyperAnimatedText(
    animationTxt2,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 16),
  ),
  TyperAnimatedText(
    animationTxt3,
    speed: Duration(milliseconds: 50),
    textStyle: GoogleFonts.archivo().copyWith(fontSize: 16),
  ),
];
