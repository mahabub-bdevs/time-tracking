import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/core.dart';
import '../../../../routes/app_routes.dart';
import '../../repository/auth_repository.dart';

class LogoutController extends GetxController {
  final isLoading = false.obs;
  final authRepository = Get.find<AuthRepository>();

  Future<void> logOut() async {
    try {
      isLoading.value = true;
      final responce = await authRepository.logout();

      if (responce.isSuccess) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(
          SnackBar(
            content: CustomText(
              text: "Your Account LogOut Successfully",
              fontSize: getSp(16),
              color: AppColors.primaryLight,
              fontWeight: FontWeight.w800,
              fontFamily: AppFont.inter,
            ),
            backgroundColor: AppColors.backgroundDark,
          ),
        );
        if (Get.isDialogOpen ?? false) Get.back();
        if (Get.isBottomSheetOpen ?? false) Get.back();

        await Future.delayed(const Duration(milliseconds: 100));

        Get.offAllNamed(AppRoutes.login);
      } else {
        ScaffoldMessenger.of(Get.context!).showSnackBar(
          SnackBar(
            content: CustomText(
              text: responce.errorMessage,
              fontSize: getSp(16),
              color: AppColors.primaryLight,
              fontWeight: FontWeight.w800,
              fontFamily: AppFont.inter,
            ),
            backgroundColor: AppColors.backgroundDark,
          ),
        );
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading.value = false;
    }
  }
}
