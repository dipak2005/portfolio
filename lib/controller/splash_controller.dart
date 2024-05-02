import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  void back() {
    Timer(const Duration(microseconds: 500), () {
      Get.offNamed("home");
    });
  }

  @override
  void onInit() {
    back();
    super.onInit();
  }
}
