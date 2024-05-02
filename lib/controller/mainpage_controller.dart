import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:get/get.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPageController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => scaffoldKey;

  RxBool isHover = false.obs;
  RxBool isOpen = false.obs;

  // void hover(bool hover) {
  //   isHover.value = !isHover.value;
  // }

  RxBool isLight = false.obs;
  late AnimationController lottieController;

  void theme() {
    isLight.value = !isLight.value;
    if (Get.isDarkMode) {
      Get.changeTheme(PortFolioTheme.lightTheme);
    } else {
      Get.changeTheme(PortFolioTheme.darkTheme);
    }
  }

  final ItemScrollController itemScrollController = ItemScrollController();
  final scrollDuration = const Duration(seconds: 1);

  void jumpTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInCubic,
      alignment: 0);
}
