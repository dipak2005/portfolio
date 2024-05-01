// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:flutter/material.dart';

import '../responsive/res_widget.dart';

class AppbarLogo extends StatelessWidget {
  const AppbarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: Theme.of(context).textColor,
      fontWeight: FontWeight.w100,
      fontSize: Responsive.isDesktop(context) ? 32 : 20,
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "{",
          style: textStyle,
        ),
        Text(
          " DIPAK",
          style: textStyle,
        ),
        Text(Responsive.isDesktop(context) ? " /}\t\t" : " / }",style: textStyle,)
      ],
    );
  }
}
