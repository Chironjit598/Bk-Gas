import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/controllers/sign_in_controller.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_text_feild.dart';
import 'package:get/get.dart';

import '../basae/custom_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
    SignInController loginController=Get.put(SignInController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(title: "Sign In"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
            
            
            
               
                SizedBox(
                  height: 120.h,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackClr,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Welcome Back! Please enter your dettails.",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grayClr,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Column(
                    children: [
                      customTextField(
                        loginController.loginEmailController,
                        TextInputType.emailAddress,
                        context,
                        "Enter E-Mail",
                        (val) {
                          if (val.isEmpty) {
                            return "this feild can't empty";
                          }
            
                          if (!val.contains(RegExp(r'\@'))) {
                            return 'enter a valid email address';
                          }
                        },
                        prefixIcon: Icons.email_outlined,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Obx(
                        () => customTextField(
                          loginController.loginPassController,
                          TextInputType.text,
                          context,
                          "Enter Password",
                          (val) {
                            if (val.isEmpty) {
                              return 'this field can\'t be empty';
                            }
                          },
                          prefixIcon: Icons.key_rounded,
                          suffixIcon: loginController.obscureText.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          suffixIconOntap: () =>
                              loginController.togglePasswordVisibility(),
                          obscureText: loginController.obscureText.value,
                        ),
                      ),
            
            
                  
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                customButton(
                    title: "Log In",
                    ontap: () => Get.toNamed(Routes.signIn)),
                SizedBox(
                  height: 180.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don\'t have an account?",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.blackClr,
                      ),
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(Routes.signUp),
                        child: Text("Sign Up",
                            style: TextStyle(
                              color: AppColors.primaryClr,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            )))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
