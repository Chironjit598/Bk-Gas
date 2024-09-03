import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/controllers/sign_up_controller.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_text_feild.dart';
import 'package:get/get.dart';

import '../basae/custom_button.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Sign Up"),
            body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    "Sign Up to join",
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackClr,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Column(
                    children: [
                      customTextField(
                        signUpController.firstName,
                        TextInputType.emailAddress,
                        context,
                        "First Name",
                        (val) {
                          if (val.isEmpty) {
                            return "this feild can't empty";
                          }

                          if (!val.contains(RegExp(r'\@'))) {
                            return 'enter a valid email address';
                          }
                        },
                        prefixIcon: Icons.person,
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      customTextField(
                        signUpController.lastName,
                        TextInputType.emailAddress,
                        context,
                        "Last Name",
                        (val) {
                          if (val.isEmpty) {
                            return "this feild can't empty";
                          }

                          if (!val.contains(RegExp(r'\@'))) {
                            return 'enter a valid email address';
                          }
                        },
                        prefixIcon: Icons.person,
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      customTextField(
                        signUpController.phoneNumber,
                        TextInputType.number,
                        context,
                        "Phone Number",
                        (val) {
                          if (val.isEmpty) {
                            return "this feild can't empty";
                          }

                          if (!val.contains(RegExp(r'\@'))) {
                            return 'enter a valid email address';
                          }
                        },
                        prefixIcon: Icons.phone,
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Obx(
                        () => customTextField(
                          signUpController.password,
                          TextInputType.text,
                          context,
                          "Password",
                          (val) {
                            if (val.isEmpty) {
                              return 'this field can\'t be empty';
                            }
                          },
                          prefixIcon: Icons.key_rounded,
                          suffixIcon: signUpController.obscureText.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          suffixIconOntap: () =>
                              signUpController.togglePasswordVisibility(),
                          obscureText: signUpController.obscureText.value,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Obx(
                        () => customTextField(
                          signUpController.confirmPass,
                          TextInputType.text,
                          context,
                          "Confirm Password",
                          (val) {
                            if (val.isEmpty) {
                              return 'this field can\'t be empty';
                            }
                          },
                          prefixIcon: Icons.key_rounded,
                          suffixIcon: signUpController.obscureText2.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          suffixIconOntap: () =>
                              signUpController.togglePasswordVisibility2(),
                          obscureText: signUpController.obscureText2.value,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(() => Checkbox(
                        activeColor: AppColors.primaryClr,
                        value: signUpController.isChecked.value,
                        onChanged: (val) =>
                            signUpController.toggleCheckBox(val!))),
                    Text(
                      """By creating an account, I accept the Terms
 & Conditions & Privacy Policy.""",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grayClr,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                customButton(
                    title: "Sign Up", ontap: () => Get.toNamed(Routes.otp)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
