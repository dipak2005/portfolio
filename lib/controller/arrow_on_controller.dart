// ignore_for_file: prefer_const_constructors


import '../model/config/export.dart';

class ArrowOnController extends GetxController {
  RxBool isHover = false.obs;
  void hover(){
    isHover.value=!isHover.value;
  }



  // final ItemScrollController itemScrollController = ItemScrollController();
  // final scrollDuration = Duration(seconds: 1);
  //
  // void jumpTo(int index) => itemScrollController.scrollTo(
  //     index: index,
  //     duration: scrollDuration,
  //     curve: Curves.easeInCubic,
  //     alignment: 0);
}
