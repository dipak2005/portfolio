// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/appbar/appbar_logo.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/util/appbar_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'appbar_ac_button.dart';
import '../config/export.dart';

class AppbarDesktop extends StatefulWidget {
  const AppbarDesktop({super.key});

  @override
  State<AppbarDesktop> createState() => _AppbarDesktopState();
}

class _AppbarDesktopState extends State<AppbarDesktop>
    with SingleTickerProviderStateMixin {
  final MainPageController controller = Get.find<MainPageController>();
  late final AnimationController animationController =
      AnimationController(vsync: this, duration: Duration(seconds: 2));
  late AnimationController ani;
  Decoration? duRa;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).appBarColor,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 8, vertical: 10),
      child: Row(
        children: [
          AppbarLogo(),
          Expanded(child: SizedBox(width: double.infinity)),
          ...AppbarUtils.name.asMap().entries.map(
                (e) => AppbarAcButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          Obx(
            () => RotationTransition(
              turns: animationController,
              child: IconButton(
                  onPressed: () {
                    // controller.theme();
                    animationController.forward(from: 0.1);
                    controller.theme();
                  },
                  icon: Icon(
                      controller.isLight.value
                          ? Icons.light_mode_outlined
                          : Icons.dark_mode_outlined)
                  // Lottie.asset("assets/lotties/theme.json",
                  //     controller: animationController, onLoaded: (composition) {
                  //   if (!Get.isDarkMode) {
                  //     animationController
                  //       ..duration = composition.duration
                  //       ..forward();
                  //   } else {}
                  // }, height: 50, width: 50
                  // ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
