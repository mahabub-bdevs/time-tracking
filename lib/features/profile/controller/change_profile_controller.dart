import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';

import '../repository/profile_repository.dart';

class ChangeProfileController extends GetxController {
  final selectedImage = "".obs;
  final isLoading = false.obs;
  final profileRepository = Get.find<ProfileRepository>();

  Future<void> pickImage() async {
    final pickedImage = ImagePicker();
    final picked = await pickedImage.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (picked != null) {
      selectedImage.value = picked.path;
      await changeImage();
    }
  }

  Future<void> changeImage() async {
    if (selectedImage.value.isEmpty) return;

    isLoading.value = true;

    try {
      final response = await profileRepository.changeProfilePhoto(
        imagePath: selectedImage.value,
      );

      if (response.isSuccess) {
        Get.snackbar(
          'Success',
          'Profile picture updated!',
          snackPosition: SnackPosition.TOP,
        );
      } else {
        Get.snackbar('Error', response.errorMessage);
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
