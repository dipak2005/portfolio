// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/projectcard_controller.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/util/project_util.dart';
import 'package:flutter/cupertino.dart';

import '../../../../model/responsive/res_widget.dart';

class ProjectCard extends StatelessWidget {
  final ProjectUtil projectUtil;
  final int index;

  // final MainPageController controller = Get.find<MainPageController>();
  final ProjectCardController controller = Get.put(ProjectCardController());

  ProjectCard({super.key, required this.projectUtil, required this.index});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHover: (value) {
          if (value) {
            controller.setHover(index);
          } else {
            controller.setHover(-1);
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.01),
          width: Responsive.isDesktop(context)
              ? MediaQuery.sizeOf(context).width * 0.3
              : MediaQuery.sizeOf(context).width * 0.5,
          height: MediaQuery.sizeOf(context).width * 0.18,
          decoration: BoxDecoration(
            gradient:
                controller.hoverIndex.value == index ? bluePurple : Theme.of(context).serviceCard,
            borderRadius: BorderRadius.circular(10),
            boxShadow: controller.hoverIndex.value == index
                ? [primaryColorShadow]
                : [blackColorShadow],
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: controller.hoverIndex.value == index
                    ? const EdgeInsets.all(20)
                    : EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      projectUtil.icons,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.02,
                    ),
                    Text(
                      projectUtil.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: controller.hoverIndex.value == index
                              ? Colors.white
                              : Theme.of(context).textColor),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                    Responsive.isDesktop(context)||Responsive.isTablet(context)? Text(
                      projectUtil.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: controller.hoverIndex.value == index
                              ? Colors.white
                              : Theme.of(context).textColor),
                    ):FittedBox(fit: BoxFit.scaleDown,
                      child: Text(
                        projectUtil.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: controller.hoverIndex.value == index
                                ? Colors.white
                                : Theme.of(context).textColor),
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                  ],
                ),
              ),
              AnimatedOpacity(
                opacity: controller.hoverIndex.value == index ? 0.1 : 1.0,
                duration: Duration(milliseconds: 400),
                child: Container(
                  width: Responsive.isDesktop(context)
                      ? MediaQuery.sizeOf(context).width * 0.5
                      : MediaQuery.sizeOf(context).width * 0.4,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(
                            projectUtil.banners,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
