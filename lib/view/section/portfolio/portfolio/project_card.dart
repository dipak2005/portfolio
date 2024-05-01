// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/util/project_util.dart';

import '../../../../model/responsive/res_widget.dart';

class ProjectCard extends StatelessWidget {
  final ProjectUtil projectUtil;
  final MainPageController controller = Get.find<MainPageController>();

  ProjectCard({super.key, required this.projectUtil});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      width: Responsive.isDesktop(context) ? 30.w : 70.w,
      height: 36.h,
      decoration: BoxDecoration(
        gradient: controller.isHover.value ? bluePurple : grayBlack,
        borderRadius: BorderRadius.circular(10),
        boxShadow: controller.isHover.value
            ? [primaryColorShadow]
            : [blackColorShadow],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: controller.isHover.value
                ? const EdgeInsets.all(20)
                : EdgeInsets.zero,
            child: Column(
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
                      color: controller.isHover.value
                          ? Colors.white
                          : Theme.of(context).textColor),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
                Text(
                  projectUtil.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: controller.isHover.value
                          ? Colors.white
                          : Theme.of(context).textColor),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              ],
            ),
          ),
          AnimatedOpacity(
            opacity: controller.isHover.value ? 0.1 : 1.0,
            duration: Duration(milliseconds: 400),
            child: Container(
              width: Responsive.isDesktop(context) ? 30.w : 70.w,
              height: 36.h,
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
    );
  }
}
