// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/model/appbar/appbar_desktop.dart';
import 'package:dipak_portfolio/model/appbar/appbar_tablet.dart';
import 'package:dipak_portfolio/model/widget/arrow_top.dart';
import 'package:dipak_portfolio/view/section/main_section/widget/body_page.dart';
import 'package:dipak_portfolio/view/section/main_section/widget/mobile_drawer.dart';
import 'package:flutter/cupertino.dart';

import '../../../model/config/export.dart';

class MainPage extends StatelessWidget {
  final MainPageController controller = Get.put(MainPageController());

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      key: controller.scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          mobile: TabletAppbar(),
          tablet: TabletAppbar(),
          desktop: AppbarDesktop(),
        ),
      ),
      drawer: Responsive.isDesktop(context) ? null : MobileDrawer(),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.2,
            left: -88,
            child: Container(
              height: MediaQuery.sizeOf(context).height / 3,
              width: 166,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: skyBlueColor.withOpacity(0.2),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 166,
                  width: 166,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: -100,
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(0.3),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 500,
                  sigmaY: 500,
                ),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          if (!controller.isLight.value)
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                opacity: const AlwaysStoppedAnimation<double>(0.3),
                "assets/images/back.jpg",
                fit: BoxFit.cover,
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
          Positioned(
            top: Responsive.isDesktop(context)
                ? MediaQuery.sizeOf(context).width * 0.05
                : MediaQuery.sizeOf(context).width * 0.3,
            right: Responsive.isDesktop(context)
                ? MediaQuery.sizeOf(context).width * 0.06
                : MediaQuery.sizeOf(context).width * 0.07,
            child: Image.asset(
              "assets/images/bg2.png",
              height: Responsive.isDesktop(context)
                  ? MediaQuery.sizeOf(context).width * 0.2
                  : MediaQuery.sizeOf(context).width * 0.1,
              width: 200,
            ),
          ),
          BodyPage(),
          ArrowOnTop()
        ],
      ),
    );
  }
}
