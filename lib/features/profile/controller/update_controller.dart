import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../repository/profile_repository.dart';
import 'profile_controller.dart';

class UpdateController extends GetxController {
  final profileRepository = Get.find<ProfileRepository>();
  final profileController = Get.find<ProfileController>();
  final isLoading = false.obs;
  final message = ''.obs;

  final fastName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNumber = TextEditingController();
  final address = TextEditingController();

  Future<void> profileUpdate() async {
    try {
      isLoading.value = true;
      final responce = await profileRepository.updateProfile(
        firstname: fastName.text.trim(),
        lastName: lastName.text.trim(),
        phone: phoneNumber.text.trim(),
        address: address.text.trim(),
      );
      if (responce.isSuccess) {
        Get.back();
        Get.snackbar(
          'Success',
          'Profile updated!',
          snackPosition: SnackPosition.TOP,
        );
        profileController.getProfileDeteiles();
      } else {
        Get.snackbar('Error', responce.errorMessage);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
