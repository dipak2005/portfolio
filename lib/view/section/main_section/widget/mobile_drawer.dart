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
        padding: EdgeInsets.only(top: 2.h),
        child: Column(
          children: [
            Center(
              child: AppbarLogo(),
            ),
            Divider(),
            Obx(
              () => ListTile(
                leading: Icon(controller.isDark.value
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode_outlined),
                title: controller.isDark.value
                    ? Text("Light Mode")
                    : Text("Dark Mode"),
                trailing: Switch.adaptive(
                  value: controller.isDark.value,
                  onChanged: (value) {
                    controller.theme(value);
                  },
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
              height: 5.w,
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
