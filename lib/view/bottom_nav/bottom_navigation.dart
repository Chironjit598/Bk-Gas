import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/view/bottom_nav/account_screen.dart';
import 'package:gas/view/bottom_nav/cart_screen.dart';
import 'package:gas/view/bottom_nav/home_screen.dart';
import 'package:gas/view/bottom_nav/order_screen.dart';
import 'package:gas/controllers/bottom_nav_controller.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});
  BottomNavController bottomNavController = Get.put(BottomNavController());
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customGradiantBackground(),
      child: Scaffold(
        body: Obx(() =>bottomNavController.pages[bottomNavController.currentIndex.value]),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: Obx(
                () => BottomNavigationBar(
                    currentIndex: bottomNavController.currentIndex.value,
                    onTap: (value) {
                      bottomNavController.currentIndex.value = value;
                    },
                    showUnselectedLabels: true,
                    selectedItemColor: AppColors.whiteClr,
                    unselectedItemColor: AppColors.whiteClr,
                    items: [
                      BottomNavigationBarItem(
                          backgroundColor: AppColors.primaryClr,
                           icon: bottomNavController.currentIndex.value == 0
                              ? Padding(
                                padding:  EdgeInsets.symmetric(vertical: 5.h),
                                child: const CircleAvatar(
                                  
                                    backgroundColor: Colors.white60,
                                    child: Icon(Icons.home)),
                              )
                              : const Icon(Icons.sim_card),
                          label: "Home"),
                      BottomNavigationBarItem(
                          backgroundColor: AppColors.primaryClr,
                           icon: bottomNavController.currentIndex.value == 1
                              ? Padding(
                                padding:  EdgeInsets.symmetric(vertical: 5.h),
                                child: const CircleAvatar(
                                  
                                    backgroundColor: Colors.white60,
                                    child: Icon(Icons.sim_card)),
                              )
                              : const Icon(Icons.card_travel),
                          label: "Cart"),
                      BottomNavigationBarItem(
                          backgroundColor: AppColors.primaryClr,
                          icon: bottomNavController.currentIndex.value == 2
                              ? Padding(
                                padding:  EdgeInsets.symmetric(vertical: 5.h),
                                child: const CircleAvatar(
                                  
                                    backgroundColor: Colors.white60,
                                    child: Icon(Icons.sim_card)),
                              )
                              : const Icon(Icons.sim_card),
                          label: "Order"),
                      BottomNavigationBarItem(
                          backgroundColor: AppColors.primaryClr,
                           icon: bottomNavController.currentIndex.value == 3
                              ? Padding(
                                padding:  EdgeInsets.symmetric(vertical: 5.h),
                                child: const CircleAvatar(
                                  
                                    backgroundColor: Colors.white60,
                                    child: Icon(Icons.sim_card)),
                              )
                              : const Icon(Icons.person),
                          label: "Profile"),
                    ]),
              )),
        ),
      ),
    );
  }
}
