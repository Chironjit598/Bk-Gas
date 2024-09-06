import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gas/controllers/cart_controller.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/utils/images.dart';
import 'package:gas/view/basae/custom_app_bar.dart';
import 'package:gas/view/basae/custom_button.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Cart"),
        body: controller.isCartEmpty()
            ? Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 110.h,
                    ),
                    SvgPicture.asset(
                      AppImages.cart,
                      height: 220.h,
                      width: 185.w,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Add items to start a basket",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        "Once you add items from a store, your basket will appear here.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70.w),
                      child:
                          customButton(title: "Start Shopping", ontap: () {}),
                    )
                  ],
                ),
              )
            : Container(
                height: double.infinity,
                width: double.infinity,
                child: SizedBox(
                    height: 200.h,
                    child: Obx(
                      () => ListView.builder(
                          itemCount: controller.cartItem.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 20.w),
                              height: 90.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.secondryClr,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    controller.cartItem[index].img,
                                    height: 77.h,
                                    width: 62.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 12.h),
                                        child: Text(
                                          controller
                                              .cartItem[index].productName,
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        controller.cartItem[index].weight,
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10.h),
                                        child: Text(
                                          "\$${controller.cartItem[index].price.toString()}",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                 
                                 Spacer(),
                                 
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(children: [
                                        TextButton(
                                          onPressed: ()=>controller.decreament(), 
                                          child: Text("➖")),

                                          Obx(()=>Text(controller.selectNumber.value.toString(),
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          )),


                                          TextButton(
                                          onPressed: ()=>controller.increament(), 
                                          child: Text("➕")),
                                      ],),
                                   ],
                                  )
                                ],
                              ),
                            );
                          }),
                    )),
              ));
  }
}
