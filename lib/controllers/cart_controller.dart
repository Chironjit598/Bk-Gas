import 'package:gas/model/cart_item_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList cartItem=<CartItemModel>[].obs;

    RxInt selectNumber=1.obs;

  void increament(){
    selectNumber++;
  }

  void decreament(){
    if (selectNumber>1) {
      selectNumber--;
      
    }
    
  }

  addItem(CartItemModel CartItemModel){
    cartItem.add(CartItemModel);
    

  }

   removeItem(CartItemModel CartItemModel){
    cartItem.remove(CartItemModel);
    

  }



 

  bool isCartEmpty(){
    return cartItem.isEmpty;
  }


  
}