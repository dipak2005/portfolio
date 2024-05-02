// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/service_card_controller.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/model/util/service_util.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ServiceCard extends StatelessWidget {
  final ServiceUtil serviceUtil;
  final int index;

  // final MainPageController controller = Get.find<MainPageController>();
  final ServiceCardController controller = Get.put(ServiceCardController());

  ServiceCard({super.key, required this.serviceUtil, required this.index});

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

          // controller.hover(value);
        },
        child: Container(
          width: Responsive.isTablet(context) ? 400 : 300,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            gradient: controller.hoverIndex.value == index
                ? bluePurple
                : Theme.of(context).serviceCard,
            borderRadius: BorderRadius.circular(16),
            boxShadow: controller.hoverIndex.value == index
                ? [primaryColorShadow]
                : [blackColorShadow],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  serviceUtil.icon,
                  height: 60,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).width * 0.03,
                ),
                Text(
                  serviceUtil.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: controller.hoverIndex.value == index
                          ? Colors.white
                          : Theme.of(context).textColor),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).width * 0.01,
                ),
                Text(
                  serviceUtil.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: controller.hoverIndex.value == index
                        ? Colors.white
                        // .withOpacity(0.8)
                        : Theme.of(context).textColor,
                    fontWeight: FontWeight.w200,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).width * 0.06,
                ),
                // if (Responsive.isDesktop(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: serviceUtil.tool
                      .map((e) => Responsive.isDesktop(context)
                          ? Row(
                              children: [
                                Text(
                                  "🛠 ",
                                  style: TextStyle(
                                      color:
                                          controller.hoverIndex.value == index
                                              ? Colors.white
                                              // .withOpacity(0.8)
                                              : Theme.of(context).textColor),
                                ),
                                Text(
                                  e,
                                  style: TextStyle(
                                      color:
                                          controller.hoverIndex.value == index
                                              ? Colors.white
                                              : Theme.of(context).textColor),
                                )
                              ],
                            )
                          : FittedBox(fit: BoxFit.cover,
                            child: Row(
                                children: [
                                  Text(
                                    "🛠 ",
                                    style: TextStyle(
                                        color:
                                            controller.hoverIndex.value == index
                                                ? Colors.white
                                                // .withOpacity(0.8)
                                                : Theme.of(context).textColor),
                                  ),
                                  Text(
                                    e,
                                    style: TextStyle(
                                        color:
                                            controller.hoverIndex.value == index
                                                ? Colors.white
                                                : Theme.of(context).textColor),
                                  )
                                ],
                              ),
                          ))
                      .toList(),
                ),
                // if (Responsive.isTablet(context) || Responsive.isTablet(context))
                //   Expanded(
                //     child: ListView(shrinkWrap: true,
                //                       padding: EdgeInsets.zero,
                //                       children: serviceUtil.tool
                //       .map((e) => Row(
                //             children: [
                //               Text("🛠 "),
                //               Text(
                //                 e,
                //                 style: TextStyle(
                //                     color: controller.isHover.value
                //                         ? Colors.white
                //                         : Theme.of(context).textColor),
                //               )
                //             ],
                //           ))
                //       .toList(),
                //                     ),
                //   )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
