import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:get/get.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/config/export.dart';

class MainPageController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => scaffoldKey;

  RxBool isHover = false.obs;
  RxBool isOpen = false.obs;

  // void hover(bool hover) {
  //   isHover.value = !isHover.value;
  // }

  RxBool isDarkMode = false.obs;
  late AnimationController lottieController;

  ThemeData get currentTheme =>
      isDarkMode.value ? PortFolioTheme.lightTheme : PortFolioTheme.darkTheme;

  void theme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(currentTheme);
    // if (isLight.value) {
    //   isLight.value = true;
    //   Get.changeTheme(PortFolioTheme.lightTheme);
    //   update();
    // } else {
    //   isLight.value = false;
    //   Get.changeTheme(PortFolioTheme.darkTheme);
    //   update();
    // }
  }

  final ItemScrollController itemScrollController = ItemScrollController();
  final scrollDuration = const Duration(seconds: 1);

  void jumpTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInCubic,
      alignment: 0);
}
