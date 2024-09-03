import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/utils/colors.dart';

Widget customOtpTextfeild({required context, required controller, required int index}){
   return Container(
    width: 50.w,
    height: 85.h,
    child: TextField(
      
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      maxLength: 1,
      cursorColor: AppColors.primaryClr,
      decoration: InputDecoration(
        
        fillColor: AppColors.secondryClr,
        counterText: '',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            width: 1.w,
            color: AppColors.primaryClr,
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            width: 1.w,
            color: AppColors.primaryClr,
          )
        ),


      ),
      onChanged: (value) {
        if (value.length==1) {
          FocusScope.of(context).nextFocus();
          
        }
      },

    ),
   );
}