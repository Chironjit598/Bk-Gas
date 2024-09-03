import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  String title;
   CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:Text(title,
      style: const TextStyle(
        fontWeight: FontWeight.w600
      ),
      ),
      centerTitle: true,
      leading: IconButton(onPressed: ()=>Get.back(), icon:  Icon(Icons.keyboard_arrow_left_outlined, size: 33.sp,)),
    );
  }
  
  @override
   Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}