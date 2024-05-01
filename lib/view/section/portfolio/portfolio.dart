// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/view/section/portfolio/portfolio_dekstop.dart';
import 'package:dipak_portfolio/view/section/portfolio/portfolio_mobile.dart';
import 'package:flutter/material.dart';

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: PortFolioMobile(),
        tablet: PortFolioMobile(),
        desktop: PortFolioDesktop());
  }
}
