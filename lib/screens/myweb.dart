import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/drawer/talk.dart';
import 'package:portfolio/web/contact.dart';
import 'package:portfolio/mobile/mobileview.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/web/projects.dart';
import 'package:portfolio/web/skill.dart';
import 'package:portfolio/screens/watch.dart';
import 'package:portfolio/web/webview.dart';

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
        "Skill":(context) => Skill(),
        "Projects":(context) => Projects(),
        "Talk":(context) => Talk(),
      },
    );
  }
}
