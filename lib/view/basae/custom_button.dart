import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/utils/colors.dart';

Widget customButton({required title, required ontap}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      width: double.infinity,
      height: 57.h,
      decoration: BoxDecoration(
          color: AppColors.primaryClr,
          borderRadius: BorderRadius.circular(20.r)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
