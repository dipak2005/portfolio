import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/model/responsive/responsive_font_sizer.dart';
import 'package:flutter/material.dart';

class CustomTextHeading extends StatelessWidget {
  final String text;

  const CustomTextHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Text(
        text,
        style: TextStyle(
          fontSize: isFontSize(context, 16),
        ),
      ),
      tablet: Text(
        text,
        style: TextStyle(
          fontSize: isFontSize(context, 36),
        ),
      ),
      desktop: Text(
        text,
        style: TextStyle(
          fontSize: isFontSize(context, 56),
        ),
      ),
    );
  }
}

class CustomSubHeading extends StatelessWidget {
  final String text;

  const CustomSubHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).textColor.withOpacity(0.6),
          fontSize: isFontSize(context, 14),
        ),
      ),
      tablet: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).textColor.withOpacity(0.6),
          fontSize: 16,
        ),
      ),
      desktop: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).textColor.withOpacity(0.6),
          fontSize: 20  ,
        ),
      ),
    );
  }
}
