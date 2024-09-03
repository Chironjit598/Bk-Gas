
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer( Duration(seconds: 3), () => Get.toNamed(Routes.intro));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      
      body: Container(
        decoration: customGradiantBackground(),
        
      
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.appLogo,
              height: 338.h,
              width: 345.w,
            ),
            Image.asset(
              AppImages.appName,
              width: 345.w,
            ),
          ],
        ),
      ),
    );
  }
}
