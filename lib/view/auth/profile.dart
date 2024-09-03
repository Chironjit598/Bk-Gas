import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/controllers/profile_controller.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
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
                      controller.selectedGender.value,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  DropdownButton(
                    value: controller.selectedGender.value.isEmpty?null:controller.selectedGender.value,
                    icon: Icon(Icons.arrow_downward),
                    items: controller.genderOptions.map((gender){
                      return DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender));
                    }).toList(), 
                    onChanged: (String? newValue){
                      if (newValue!=null) {
                        controller.updateGender(newValue);
                      }

                    })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
