import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/utils/colors.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

Widget customCategory(
    {required currentIndex, required index, required category}) {
  return InkWell(onTap: () {
    currentIndex.value = index;
  }, child: Obx(() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.w),
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      height: 40.h,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.primaryClr,
          ),
          color: currentIndex.value == index
              ? AppColors.primaryClr
              : AppColors.whiteClr,
          borderRadius: BorderRadius.circular(20.r)),
      child: Center(
          child: Row(
        children: [
          index == 0
              ? Icon(
                  Icons.category,
                  color: currentIndex.value == index
                      ? AppColors.whiteClr
                      : AppColors.blackClr,
                )
              : Container(),
          SizedBox(
            width: 5.w,
          ),
          Text(
            category,
            style: TextStyle(
              color: currentIndex.value == index
                  ? AppColors.whiteClr
                  : AppColors.blackClr,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      )),
    );
  }));
}
