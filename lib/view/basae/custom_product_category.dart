import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/utils/colors.dart';

Widget customProductCategory(title, gasWeight, img, price, coin, ontap){
  return InkWell(
    onTap: ontap,
    child: Card(
      color: Color(0xFFDCEFF9),
      child: Container(
        
        
        padding: EdgeInsets.only(left: 8.w, top: 2.h, right: 8.w, bottom: 2.h),
        margin: EdgeInsets.only(
          left: 5.w
        ), 
    
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Container(
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  width: 1,
                  color: AppColors.primaryClr,
                )
               ),
                child: Image.asset(img,
                fit: BoxFit.fill,
                height: 154.h,
                width: 124.h,
                ),
              ),
            ),
             SizedBox(
              height: 20.h,
            ),
            Text(title, 
            style: TextStyle(
              fontSize: 21.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF111111),
            ),
            ),
      
            SizedBox(
              height: 2.h,
            ),

              Text(gasWeight, 
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF111111),
            ),
            ),
             SizedBox(
              height: 5.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Text("Save \$${price}", 
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF111111),
            ),
            ),

                      Text("🪙${coin}", 
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF111111),
            ),
            ),


              ],
            )
      
          
          ],
          
        ),
     
     
      ),
    ),
  );
}