import 'package:get/get.dart';

class DettailsPageController extends GetxController {
  RxInt selectNumber=1.obs;

  void increament(){
    selectNumber++;
  }

  void decreament(){
    if (selectNumber>1) {
      selectNumber--;
      
    }
    
  }
  
}