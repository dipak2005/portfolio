// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:dipak_portfolio/controller/appbar_ac_button_controller.dart';
import 'package:dipak_portfolio/controller/arrow_on_controller.dart';
import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/animation/enternce_hii.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarAcButton extends StatelessWidget {
  final String label;
  final int index;

  AppbarAcButton({Key? key, required this.label, required this.index})
      : super(key: key);

  final MainPageController controller =
      Get.find<MainPageController>();

  @override
  Widget build(BuildContext context) {
    return EntranceHii(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: Obx(
        ()=> Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            gradient: controller.isHover.value ? bluePurple : null,
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            onHover: (value) {
              controller.isHover.value = value;

            },
            onTap: () {
              controller.jumpTo(index);
            },

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                label,
                style: TextStyle(color: (!controller.isHover.value)?Theme.of(context).textColor:Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
