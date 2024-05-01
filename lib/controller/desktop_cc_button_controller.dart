import 'package:get/get.dart';

class DesktopCcButtonController extends GetxController{
  RxBool isHover=false.obs;
  double animationWidth=0.0;
  void hover(){
    isHover.value=!isHover.value;
  }

}