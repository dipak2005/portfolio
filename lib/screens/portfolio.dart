import 'package:flutter/material.dart';
import 'package:portfolio/mobile/mobileview.dart';
import 'package:portfolio/tablet/tabletview.dart';
import 'package:portfolio/screens/watch.dart';
import 'package:portfolio/web/webview.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType==DeviceScreenType.desktop) {
          return Webview();
        }

        if (sizingInformation.deviceScreenType==DeviceScreenType.tablet) {
          return Tablet();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Mobile();
        }

        return Watch();
      },
    );
  }
}
