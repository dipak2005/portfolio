import 'package:dipak_portfolio/controller/arrow_on_controller.dart';
import 'package:dipak_portfolio/model/animation/enternce_hii.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class ArrowOnTop extends StatelessWidget {
  final ArrowOnController controller = Get.put(ArrowOnController());

  ArrowOnTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      right: -7,
      child: EntranceHii(
        offset: const Offset(0, 20),
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () {
                  controller.jumpTo(0);
                },
                onHover: (isHovering) {
                  controller.hover();
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient:
                        controller.isHover.value ? buttonGradiant : bluePurple,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                    ),
                    boxShadow: controller.isHover.value
                        ? [
                            const BoxShadow(
                              blurRadius: 12.0,
                              offset: Offset(2.0, 3.0),
                            )
                          ]
                        : null,
                  ),
                  child: Icon(
                    Icons.arrow_drop_up_outlined,
                    color: controller.isHover.value ? blackColor : Colors.white,
                    size: 5.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
