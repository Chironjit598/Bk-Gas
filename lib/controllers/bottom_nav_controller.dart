import 'package:gas/view/bottom_nav/account_screen.dart';
import 'package:gas/view/bottom_nav/cart_screen.dart';
import 'package:gas/view/bottom_nav/home_screen.dart';
import 'package:gas/view/bottom_nav/order_screen.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt currentIndex=0.obs;
   RxList pages = [
    HomeScreen(),
    CartScreen(),
    OrderScreen(),
    AccountScreen(),
  ].obs;

  
  
}