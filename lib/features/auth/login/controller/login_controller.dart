import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/storage/storage_service.dart';
import '../../../../routes/app_routes.dart';
import '../../repository/auth_repository.dart';

class LoginController extends GetxController {
  final StorageService _storage = Get.find<StorageService>();
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final isLoading = false.obs;
  final errorMessage = ''.obs;

  RxString token = ''.obs;
  RxString email = ''.obs;

  // ── Login ────────────────────────────────────────────────────
  Future<void> login() async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final response = await _authRepository.login(
        email: emailController.text.trim(),
        password: passwordController.text,
      );
      if (response.isSuccess) {
        Get.snackbar(
          'Success',
          "Login Successful",
          snackPosition: SnackPosition.TOP,
        );

        final data = response.data;
        await _storage.saveTokens(
          accessToken: data['access_token'],
          refreshToken: data['refresh_token'] ?? '',
          expiresIn: data['expires_in'],
        );
        Get.toNamed(AppRoutes.profile);
      } else {
        errorMessage.value = "Something went rong";
        return;
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        "Login Failed",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Get.theme.colorScheme.error,
        colorText: Get.theme.colorScheme.onError,
      );
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  //Forgot Password code

  final selectedImage = "".obs;
  Future<void> addAccounts() async {
    isLoading.value = true;

    Future<void> picked() async {
      final pickedImage = ImagePicker();
      final picked = await pickedImage.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
      );
      if (picked != null) {
        selectedImage.value = picked.path;
      }
    }
  }
}
