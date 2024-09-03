import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/view/bottom_nav/bottom_navigation.dart';
import 'package:gas/controllers/profile_controller.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_button.dart';
import 'package:gas/view/basae/custom_text_feild.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Fill Out Your Profile"),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Stack(
                children: [
                  Obx(() {
                    return controller.selectedImagePath.value.isNotEmpty
                        ? Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Image.file(
                                File(
                                  controller.selectedImagePath.value,
                                ),
                                width: 140..w,
                                height: 140.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.only(
                                top: 15.h, left: 15.w, right: 15.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1, color: AppColors.grayClr)),
                            child: Icon(
                              Icons.person,
                              size: 130.sp,
                              color: AppColors.grayClr,
                            ),
                          );
                  }),
                  Positioned(
                      bottom: 0.h,
                      right: 0.w,
                      child: InkWell(
                        onTap: controller.pickeImage,
                        child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                color: AppColors.primaryClr,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Icon(
                              Icons.image_rounded,
                              size: 35.sp,
                              color: Colors.white,
                            )),
                      ))
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Upload Profile Picture",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.secondryClr,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    Obx(
                      () => Text(
                        controller.selectedGender.value.isEmpty
                            ? "Gender"
                            : controller.selectedGender.value,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          controller.customMenuBtn(
                              context, "Female", "Male", "Other");
                        },
                        icon: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: double.infinity,
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.secondryClr,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Obx(() {
                        return Text(
                          controller.selectedDate.value.isEmpty
                              ? "Date of birth"
                              : controller.selectedDate.value,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      }),
                      Spacer(),
                      IconButton(
                          onPressed: () async {
                            controller.pickDate(context);
                          },
                          icon: Icon(Icons.calendar_month)),
                      SizedBox(
                        width: 10.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: customTextField(
                  controller.emailController,
                  TextInputType.emailAddress,
                  context,
                  "Email",
                  (val) {
                    if (val.isEmpty) {
                      return "this feild can't empty";
                    }

                    if (!val.contains(RegExp(r'\@'))) {
                      return 'enter a valid email address';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child:
                    customCommentTextField(controller.emailController, context),
              ),
              SizedBox(
                height: 30.h,
              ),

              customButton(title: "Continue", ontap: ()=>Get.toNamed(Routes.bottomNav))

            ],
          ),
        ),
      ),
    );
  }
}

Widget customCommentTextField(
  controller,
  context,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: TextFormField(
      maxLines: 3,
      controller: controller,
      cursorColor: AppColors.primaryClr,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(61, 146, 212, 243),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide:
                const BorderSide(color: Color.fromARGB(204, 244, 67, 54))),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(204, 244, 67, 54)),
          borderRadius: BorderRadius.circular(20.r),
        ),
        filled: true,
        hintText: "Adress",
        hintStyle: TextStyle(
          color: AppColors.primaryClr,
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
