// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/view/section/service/service_desktop.dart';
import 'package:dipak_portfolio/view/section/service/service_tablet.dart';

import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ServicePageTablet(),
        tablet: ServicePageTablet(),
        desktop: ServicePageDesktop());
  }
}
