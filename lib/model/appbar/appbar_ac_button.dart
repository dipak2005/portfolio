// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/animation/enternce_hii.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';

class AppbarAcButton extends StatelessWidget {
  final String label;
  final int index;

  AppbarAcButton({Key? key, required this.label, required this.index})
      : super(key: key);

  final AppbarAcButtonController controller =
      Get.put(AppbarAcButtonController());

  final MainPageController main = Get.find<MainPageController>();

  @override
  Widget build(BuildContext context) {
    return EntranceHii(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: Obx(
        () => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            gradient: controller.hoverIndex.value == index ? bluePurple : null,
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            onHover: (value) {
              if (value) {
                controller.setHover(index);
              } else {
                controller.setHover(-1);
              }
              AppbarAcButtonController.isHover.value = value;

              // controller.hover(value, index);

            },
            onTap: () {
              main.jumpTo(index);
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                label,
                style: TextStyle(
                    color: (controller.hoverIndex.value != index)
                        ? Theme.of(context).textColor
                        : Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
