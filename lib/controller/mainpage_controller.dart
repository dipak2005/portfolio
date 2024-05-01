import 'package:dipak_portfolio/model/config/export.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPageController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => scaffoldKey;

  RxBool isHover = false.obs;

  void hover(bool hover) {
    isHover.value=!isHover.value;
  }

  RxBool isDark = true.obs;
late AnimationController  lottieController;
 void theme(bool theme) {
    isDark.value = !isDark.value;
    if(isDark.isTrue){
      Get.changeTheme(ThemeData.dark());
    }else{
      Get.changeTheme(ThemeData.light());
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
