import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui_web';

import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, "Webview");
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Color(0xff1F1F1F),
            strokeAlign: 12,
            backgroundColor: Colors.yellow,
            strokeCap: StrokeCap.round,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Flutter",
              style: GoogleFonts.abrilFatface(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "LOADING",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize:25,
                letterSpacing: 10),
          ),
        ],
      ),
    );
  }
}
