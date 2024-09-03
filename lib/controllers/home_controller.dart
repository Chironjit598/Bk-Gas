import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController searchController=TextEditingController();
  List category = ["All Items", "6 kg", "12 kg", "36 Kg"];

  RxInt currentIndex = 0.obs;
  
}