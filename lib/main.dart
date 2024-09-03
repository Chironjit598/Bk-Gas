import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BkGas());
}


class BkGas extends StatelessWidget {
  const BkGas({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: pages,
          initialRoute: Routes.splash,
        );
        
      });
    }
}



