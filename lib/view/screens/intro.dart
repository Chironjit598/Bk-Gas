import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/utils/images.dart';
import 'package:gas/view/basae/custom_button.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:get/get.dart';


class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: customGradiantBackground(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.h,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.signIn),
                  child: Container(
                    margin: EdgeInsets.only(right: 20.w),
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(width: 1, color: AppColors.primaryClr)
                    ),
                    child: const Text("Skip", 
                    style: TextStyle(
                      color: AppColors.primaryClr,
                    ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              Image.asset(AppImages.intro,
              height: 340.h,
              width: 340.w,
              ),
               SizedBox(
                height: 120.h,
              ),
                
                
           customButton(title: "GET STARTED", ontap: ()=>Get.toNamed(Routes.signIn))
            ],
          ),
        ),
      ),
    );
  }
}