import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas/controllers/home_controller.dart';
import 'package:gas/routes/routes.dart';
import 'package:gas/utils/colors.dart';
import 'package:gas/utils/images.dart';
import 'package:gas/view/basae/custo_category.dart';
import 'package:gas/view/basae/custom_gradiant_background.dart';
import 'package:gas/view/basae/custom_product_category.dart';
import 'package:gas/view/basae/custom_text_feild.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customGradiantBackground(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Container(
          width: double.infinity,
        
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 260.w,
                    child: customTextField(homeController.searchController,
                        TextInputType.text, context, "Search", (val) {
                      if (val.isEmpty) {
                        return 'this field can\'t be empty';
                      }
                    }, prefixIcon: Icons.search_rounded),
                  ),
                  Container(
                    height: 60.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColors.primaryClr,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                        child: Text(
                      "Button",
                      style: TextStyle(
                        color: AppColors.whiteClr,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                  )
                ],
              ),

                  SizedBox(
                height: 20.h,
              ),

              //for Categiry

              SizedBox(
                height: 50.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.category.length,
                    itemBuilder: (context, index) {
                      return customCategory(
                          currentIndex: homeController.currentIndex,
                          index: index,
                          category: homeController.category[index].toString());
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        itemCount: 50,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0, // Spacing between columns
                          mainAxisSpacing: 16.0,
                          childAspectRatio: 0.60,
                        ),
                        itemBuilder: (context, index) {
                          return customProductCategory(
                              "Product Name",
                              "6kg",
                              AppImages.gas,
                              "Save \$2",
                              "100",
                              (){
                                Get.toNamed(Routes.dettails,
                                arguments: {
                            "img":AppImages.gas,
                            "name":"Product Name",
                            "weight":"6kg",
                            "des": "Get a free wrap and Drink with any order of a bowl. Press redeem and show this Coupy Deal to a staff member to redeem. Lorem ipsum dolor sit amet consectetur. Enim sagittis mattis sed risus nunc. Non ac vel viverra ut facilisis ultricies leo. Vel nunc eget tellus duis mollis sollicitudin. Eget aliquam leo sed arcu. Dignissim enim dolor rhoncus nam nisi ullamcorper sed suscipit pellentesque. Volutpat magna imperdiet cum adipiscing quam curabitur consectetur. At tortor consectetur ut ut scelerisque nec elementum tellus. Consectetur quis amet duis quisque suspendisse. Pellentesque scelerisque venenatis blandit velit ac eu.",
                            "price":2,
                            "coin":"100"
                          }
                                );
                              }
                              );
                        }),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
