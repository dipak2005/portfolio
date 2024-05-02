import 'package:dipak_portfolio/model/config/export.dart';

class ServiceCardController extends GetxController {
  RxInt hoverIndex=(-1).obs;

  void setHover(int index){
    hoverIndex.value=index;
  }
}
