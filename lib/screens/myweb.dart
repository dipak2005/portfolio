import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/mobileview.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/screens/watch.dart';
import 'package:portfolio/screens/webview.dart';

// import 'homepage.dart';
class Myweb   extends StatefulWidget {
  const Myweb({super.key});

  @override
  State<Myweb> createState() => _MywebState();
}

class _MywebState extends State<Myweb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Portfolio",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => Portfolio(),
        "Webview":(context) => Webview(),
        "Mobile":(context) => Mobile(),
        "Tablet":(context) => Table(),
        "Watch":(context) => Watch(),
        "Contact":(context) => Contact(),
      },
    );
  }
}
