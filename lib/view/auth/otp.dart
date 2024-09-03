import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/controllers/otp_controller.dart';
import 'package:gas/main.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_button.dart';
import 'package:gas/view/basae/custom_otp_textfeild.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  OtpController controller = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Verify Number"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        child: Column(
          children: [
            Text(
              """We have sent a verification code to your number.
Please check your number and enter the code. """,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.grayClr,
                fontWeight: FontWeight.w400,
              ),
            ),


            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customOtpTextfeild(
                    context: context,
                    controller: controller.otpController1,
                    index: 1),
                customOtpTextfeild(
                    context: context,
                    controller: controller.otpController2,
                    index: 2),
                customOtpTextfeild(
                    context: context,
                    controller: controller.otpController3,
                    index: 3),
                customOtpTextfeild(
                    context: context,
                    controller: controller.otpController4,
                    index: 4),
                      customOtpTextfeild(
                    context: context,
                    controller: controller.otpController5,
                    index: 5),
                      customOtpTextfeild(
                    context: context,
                    controller: controller.otpController6,
                    index: 6),
              ],
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Didn’t get the code?",
                  style: TextStyle(
                    color: AppColors.grayClr,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
              
                     Text("Resend",
                  style: TextStyle(
                    color: AppColors.blackClr,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ],
              ),
            ), 

            SizedBox(
              height: 360.h,
            ),


            customButton(title: "Verify Email", ontap: ()=>Get.toNamed(Routes.profile))
          ],
        ),
      ),
    );
  }
}
