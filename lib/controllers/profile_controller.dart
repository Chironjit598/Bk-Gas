import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  RxString selectedImagePath = ''.obs;
  RxString selectedGender = "".obs;
  RxList<String> genderOptions = ['Male', 'Female', 'Other'].obs;

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
}
