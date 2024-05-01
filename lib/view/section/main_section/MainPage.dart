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

import '../../../model/config/export.dart';

class MainPage extends StatelessWidget {
  final MainPageController controller = Get.put(MainPageController());

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: MobileDrawer().key,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          mobile: TabletAppbar(),
          tablet: TabletAppbar(),
          desktop: AppbarDesktop(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? MobileDrawer() : null,
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
                color: skyBlueColor,
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
                color: primaryColor.withOpacity(0.5),
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
          if (!controller.isDark.value)
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/f3.png",
              fit: BoxFit.cover,
            ),
          ),
          BodyPage(),
          // ArrowOnTop()
        ],
      ),
    );
  }
}
