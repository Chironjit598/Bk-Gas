import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DettailsPage extends StatelessWidget {
 

   DettailsPage({super.key});
        final Map<String, dynamic> product = Get.arguments;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Dettails"),
      body: Container(
        decoration: customGradiantBackground(),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(product["img"
              
              ], height: 450.h, width: 375.w,),
          
               Text(product["name"], 
            style: TextStyle(
              fontSize: 21.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF111111),
            ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}