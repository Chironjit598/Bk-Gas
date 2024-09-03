import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
   TextEditingController loginEmailController=TextEditingController();
    TextEditingController loginPassController=TextEditingController();

  RxBool obscureText=true.obs;
  void togglePasswordVisibility(){
    obscureText.value=!obscureText.value;
  }

    
 
  
}