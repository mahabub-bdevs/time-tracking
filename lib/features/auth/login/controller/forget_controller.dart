import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/storage/storage_service.dart';
import '../../repository/auth_repository.dart';

class ForgetController extends GetxController {
  final StorageService _storage = Get.find<StorageService>();
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  final isLoading = false.obs;
  final errorMessage = ''.obs;

  final forgotPasswordController = TextEditingController();

  Future<void> forgotPassword() async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final responce = await _authRepository.forgotPassword(
        email: forgotPasswordController.text.trim(),
      );
      if (responce.isSuccess) {
        Get.snackbar(
          "SuccessFully",
          "Check your email",
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          "⚠️ Error",
          errorMessage.value = "Something went wrong",
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(10),
          borderRadius: 10,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
          duration: const Duration(seconds: 3),
        );
      }
    } catch (e) {
      e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
