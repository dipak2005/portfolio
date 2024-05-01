// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/appbar/appbar_logo.dart';
import 'package:dipak_portfolio/model/util/appbar_util.dart';
import 'package:lottie/lottie.dart';

import 'appbar_ac_button.dart';
import '../config/export.dart';

class AppbarDesktop extends StatelessWidget {
  final MainPageController controller = Get.find<MainPageController>();

  AppbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 8, vertical: 10),
      child: Row(
        children: [
          AppbarLogo(),
          Expanded(child: SizedBox(width: double.infinity)),
          ...AppbarUtils.name.asMap().entries.map(
                (e) => AppbarAcButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          InkWell(
            onTap: () {


            },
            child: Lottie.asset("assets/lotties/theme.json",
                height: 50, width: 50),
          ),
        ],
      ),
    );
  }
}
