import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../repository/profile_repository.dart';

class CoverPhotoController extends GetxController {
  RxString selectedImage = "".obs;
  final isLoading = false.obs;

  final profileRepository = Get.find<ProfileRepository>();

  Future<void> imagePicker() async {
    ImagePicker picker = ImagePicker();
    final pick = await picker.pickImage(source: ImageSource.gallery);

    if (pick != null) {
      selectedImage.value = pick.path;
      coverPhotoChange();
    }
  }

  Future<void> coverPhotoChange() async {
    try {
      isLoading.value = true;

      final responce = await profileRepository.changeCoverPhoto(
        imagePath: selectedImage.value,
      );
      if (responce.isSuccess) {
        Get.snackbar("", "change cover photo");
      } else {
        Get.snackbar("", responce.errorMessage);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
