
import '../model/config/export.dart';

class AppbarAcButtonController extends GetxController {

 static RxBool isHover = false.obs;
   RxInt hoverIndex=(-1).obs;

   void setHover(int index){
    hoverIndex.value=index;
   }
  // void hover(bool hover,int index) {
  //   isHover.value=!isHover.value;
  // }

}
