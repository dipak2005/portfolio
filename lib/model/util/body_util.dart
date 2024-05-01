import 'package:dipak_portfolio/view/section/contact/contact.dart';
import 'package:dipak_portfolio/view/section/footer.dart';
import 'package:dipak_portfolio/view/section/home/home.dart';
import 'package:dipak_portfolio/view/section/portfolio/portfolio.dart';
import 'package:dipak_portfolio/view/section/service/service.dart';
import 'package:flutter/material.dart';

class BodyUtil {
  static const List<Widget> component = [
    Home(),
    ServicePage(),
    PortFolio(),
    Contact(),
    Footer()
  ];
}
