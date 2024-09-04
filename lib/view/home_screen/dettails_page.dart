import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/controllers/dettails_page_controller.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_button.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DettailsPage extends StatelessWidget {
  DettailsPage({super.key});
  final Map<String, dynamic> product = Get.arguments;
  DettailsPageController dettailsPageController=Get.put(DettailsPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Dettails"),
      body: Container(
        decoration: customGradiantBackground(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product["img"],
                height: 400.h,
                width: 375.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product["name"],
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF111111),
                    ),
                  ),
                  Row(
                    children: [


                        TextButton(onPressed:()=>dettailsPageController.increament(), 
                        child: Text("➖",
                        style: TextStyle(
                         fontSize: 15.sp,
                         fontWeight: FontWeight.w500,
                        ),
                        )),
                   
                   
                   
                   
                     Obx(()=>Text(dettailsPageController.selectNumber.value.toString())),


                         TextButton(onPressed:()=>dettailsPageController.increament(), 
                         child: Text("➕",
                         style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                         ),
                         )),
                   
                   
                   ],
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product["des"],
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.des,
                          arguments: product["des"],
                        );
                      },
                      child: Text(
                        "Read More",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.h,
              ),

              Text("Selected size",
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(
                height: 15.h,
              ),

              Container(
                height: 36.h,
                width: 36.w,
                decoration: const BoxDecoration(
                  color: AppColors.primaryClr,
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Text(product["weight"],
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.whiteClr,
                  ),
                  ),
                ),
              ),
                 SizedBox(
                height: 30.h,
              ),

              customButton(title: "Add To Card", ontap: (){})
            ],
          ),
        ),
      ),
    );
  }
}
