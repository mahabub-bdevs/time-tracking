import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../routes/app_routes.dart';
import '../../repository/auth_repository.dart';

class ResetPasswordController extends GetxController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  final token = ''.obs;
  final email = ''.obs;

  @override
  void onInit() {
    super.onInit();
    token.value = Get.parameters['token'] ?? '';
    email.value = Get.parameters['email'] ?? '';
    print('Token: ${token.value}');
    print('Email: ${email.value}');
  }

  Future<void> resetPassword() async {
    if (newPasswordController.text.isEmpty) {
      errorMessage.value = 'Password is required';
      return;
    }
    if (newPasswordController.text != confirmPasswordController.text) {
      errorMessage.value = 'Passwords do not match';
      return;
    }

    isLoading.value = true;
    errorMessage.value = '';

    try {
      final response = await _authRepository.resetPassword(
        token: token.value,
        email: email.value,
        password: newPasswordController.text,
        passwordConfirmation: confirmPasswordController.text,
      );

      if (response.isSuccess) {
        Get.snackbar('Success', 'Password reset successful!',
          snackPosition: SnackPosition.TOP,
        );
        Get.offAllNamed(AppRoutes.login);
      } else {
        errorMessage.value = response.errorMessage;
      }
    } catch (e) {
      print('Error: $e');
      errorMessage.value = 'Something went wrong';
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}