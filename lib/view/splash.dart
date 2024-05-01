// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/splash_controller.dart';
import 'package:dipak_portfolio/model/responsive/responsive_font_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LottieBuilder.asset(
              "assets/lotties/load.json",
              height: 100,
              width: 150,
            ),
          ),
          Text("Flutter",
              style: GoogleFonts.adamina().copyWith(
                  fontSize: isFontSize(context, 30),
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow.shade800)),
        ],
      ),
    );
  }
}
