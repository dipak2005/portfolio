// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/view/section/contact/contact_desktop.dart';
import 'package:dipak_portfolio/view/section/contact/contact_tablet.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ContactTablet(),
        tablet: ContactTablet(),
        desktop: ContactDesktop());
  }
}
