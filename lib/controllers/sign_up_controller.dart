import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
      var isChecked=false.obs;


  RxBool obscureText = true.obs;
    RxBool obscureText2 = true.obs;

  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }
    void togglePasswordVisibility2() {
    obscureText2.value = !obscureText2.value;
  }

   void toggleCheckBox(value){
    isChecked.value=value;
  }

}
