// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/view/section/home/home_desktop.dart';
import 'package:dipak_portfolio/view/section/home/home_mobile.dart';
import 'package:dipak_portfolio/view/section/home/home_tablet.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: HomeMobile(), tablet: HomeTablet(), desktop: HomeDesktop());
  }
}
