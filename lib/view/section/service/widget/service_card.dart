// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/model/util/service_util.dart';

import 'package:flutter_svg/flutter_svg.dart';


class ServiceCard extends StatelessWidget {
  final ServiceUtil serviceUtil;
  final MainPageController controller = Get.find<MainPageController>();

  ServiceCard({super.key, required this.serviceUtil});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isTablet(context) ? 400 : 300,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        gradient: controller.isHover.value
            ? bluePurple
            : Theme.of(context).serviceCard,
        borderRadius: BorderRadius.circular(16),
        boxShadow: controller.isHover.value
            ? [primaryColorShadow]
            : [blackColorShadow],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            serviceUtil.icon,
            height: 60,
          ),
          SizedBox(
            height: 3.w,
          ),
          Text(
            serviceUtil.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: controller.isHover.value
                    ? Colors.white
                    : Theme.of(context).textColor),
          ),
          SizedBox(
            height: 1.w,
          ),
          Text(
            serviceUtil.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: controller.isHover.value
                  ? Colors.white.withOpacity(0.8)
                  : Theme.of(context).textColor,
              fontWeight: FontWeight.w200,
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: 2.w,
          ),
          if (Responsive.isDesktop(context))
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: serviceUtil.tool
                  .map((e) => Row(
                        children: [
                          Text("🛠 "),
                          Text(
                            e,
                            style: TextStyle(
                                color: controller.isHover.value
                                    ? Colors.white
                                    : Theme.of(context).textColor),
                          )
                        ],
                      ))
                  .toList(),
            ),
          if (Responsive.isTablet(context) || Responsive.isTablet(context))
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: serviceUtil.tool
                  .map((e) => Row(
                        children: [
                          Text("🛠 "),
                          Text(
                            e,
                            style: TextStyle(
                                color: controller.isHover.value
                                    ? Colors.white
                                    : Theme.of(context).textColor),
                          )
                        ],
                      ))
                  .toList(),
            ))
        ],
      ),
    );
  }
}
