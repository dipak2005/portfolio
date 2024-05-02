import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/util/skill_util.dart';
import 'package:get/get.dart';

class SkillCardController extends GetxController {
  RxInt hoverIndex = (-1).obs;

  void setHover(int index) {
    hoverIndex.value = index;
  }





}
