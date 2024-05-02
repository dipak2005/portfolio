// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/appbar/appbar_logo.dart';
import 'package:dipak_portfolio/model/link_section/links.dart';
import 'package:dipak_portfolio/model/util/appbar_util.dart';
import 'package:dipak_portfolio/model/widget/color_change_button.dart';
import 'package:get/get.dart';

import '../../../../model/config/export.dart';

class MobileDrawer extends StatelessWidget {
  final MainPageController controller = Get.find<MainPageController>();

  MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.02),
        child: Column(
          children: [
            Center(
              child: AppbarLogo(),
            ),
            Divider(),
            Obx(
              () => ListTile(
                leading: Icon(
                    controller.isLight.value
                        ? Icons.light_mode_outlined
                        : Icons.dark_mode_outlined),
                title: controller.isLight.value
                    ? Text("Light Mode")
                    : Text("Dark Mode"),
                trailing:  Obx(
                      () => IconButton(
                          onPressed: () {
                            // controller.theme();

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
            ),
            Divider(),
            ...AppbarUtils.name.asMap().entries.map(
                  (e) => Padding(
                    padding: EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () {
                        controller.jumpTo(e.key);
                      },
                      child: ListTile(
                        leading: Icon(AppbarUtils.icons[e.key]),
                        title: Text(e.value),
                      ),
                    ),
                  ),
                ),
            SizedBox(
              height: MediaQuery.sizeOf(context).width * 0.05,
            ),
            ColorChangeButton(
              text: "Download Resume",
              onTap: () {
                launchUrl(Uri.parse(Apis().resume));
              },
            ),
          ],
        ),
      ),
    );
  }
}
