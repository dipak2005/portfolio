// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:dipak_portfolio/controller/desktop_cc_button_controller.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../responsive/res_widget.dart';

class ColorChangeButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const ColorChangeButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: DesktopCCButton(text: text, onTap: onTap),
      tablet: TabCCButton(text: text, onTap: onTap),
      mobile: MobileCCButton(text: text, onTap: onTap),
    );
  }
}

class MobileCCButton extends StatelessWidget {
  final MobileCCButtonController controller =
      Get.put(MobileCCButtonController());
  final String text;
  final Function() onTap;

  MobileCCButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);

    return Obx(
      () => Stack(
        children: [
          if (!controller.isHover.value)
            Container(
              height: 35,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(color: theme.textColor, width: 1.5),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 35,
            width: controller.animationWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              gradient: bluePurple,
            ),
          ),
          InkWell(
            onHover: (value) {
              controller.isHover.value = !controller.isHover.value;

              controller.animationWidth = value ? 125 : 0.0;
            },
            onTap: () {
              controller.animationWidth = 125;
              onTap();
            },
            child: SizedBox(
              height: 35,
              width: 125,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      text.toUpperCase(),
                      style: TextStyle(
                        color: !(controller.isHover.value)
                            ? theme.textColor
                            : Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabCCButton extends StatelessWidget {
  final DesktopCcButtonController controller =
      Get.find<DesktopCcButtonController>();
  final String text;
  final Function() onTap;

  TabCCButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);

    return Obx(
      () => Stack(
        children: [
          if (!controller.isHover.value)
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: theme.textColor, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 50,
            width: controller.animationWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: bluePurple,
            ),
          ),
          InkWell(
              onHover: (value) {
                controller.isHover.value = !controller.isHover.value;
                controller.animationWidth = value ? 200 : 0.0;
              },
              onTap: () {
                controller.animationWidth = 200;
                onTap();
              },
              child: SizedBox(
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    text.toUpperCase(),
                    style: TextStyle(
                      color: !controller.isHover.value
                          ? theme.textColor
                          : Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class DesktopCCButton extends StatelessWidget {
  final DesktopCcButtonController controller =
      Get.put(DesktopCcButtonController());
  final String text;
  final Function() onTap;

  DesktopCCButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Obx(
      () => Stack(
        children: [
          if (!controller.isHover.value)
            Container(
              height: 65,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(color: theme.textColor, width: 3),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 65,
            width: controller.animationWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient: bluePurple,
            ),
          ),
          InkWell(
            onHover: (value) {
              controller.isHover.value = !controller.isHover.value;
              controller.animationWidth = value ? 250 : 0.0;
            },
            onTap: () {
              controller.animationWidth = 250;
              onTap();
            },
            child: SizedBox(
              height: 65,
              width: 250,
              child: Center(
                child: Text(
                  text.toUpperCase(),
                  style: TextStyle(
                    color: controller.isHover.value
                        ? Colors.white
                        : theme.textColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
