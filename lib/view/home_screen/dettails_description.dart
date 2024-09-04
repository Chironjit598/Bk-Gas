import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/main.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:get/get.dart';

class DettailsDescription extends StatelessWidget {
   DettailsDescription({super.key});

  String des=Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Description"),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(20.r),
        decoration: customGradiantBackground(),
        child: Text(des,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        )),
    );
  }
}