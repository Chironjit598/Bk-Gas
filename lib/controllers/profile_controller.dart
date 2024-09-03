import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';


class ProfileController extends GetxController {
  TextEditingController emailController=TextEditingController();
  RxString selectedImagePath = ''.obs;
  RxString selectedGender = "".obs;
  RxList<String> genderOptions = ['Male', 'Female', 'Other'].obs;
   RxString selectedDate = "".obs;

  //fo Picked Image
  Future<void> pickeImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
    } else {
      selectedImagePath.value = '';
    }
  }



  // for dromdown manu
  void updateGender(String gender) {
    selectedGender.value = gender;
  }

  void updateDate(DateTime date){
    selectedDate.value=DateFormat('dd/MM/yyyy').format(date);

  }

    Future<void> pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      updateDate(pickedDate);
    }
  }



  
void customMenuBtn(
      BuildContext context, String btnOne, String btnTwo, String btnThree) {
    showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(50, 50, 0, 0),
      items: [
        PopupMenuItem<String>(
          value: btnOne,
          child: ListTile(
            title: Text(btnOne),
          ),
        ),
        PopupMenuItem<String>(
          value: btnTwo,
          child: ListTile(
            title: Text(btnTwo),
          ),
        ),
        PopupMenuItem<String>(
          value: btnThree,
          child: ListTile(
            title: Text(btnThree),
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        selectedGender.value  = value;
      }
    });
  }


}
