import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/core.dart';
import '../controller/login_controller.dart';
import '../controller/reset_password_controller.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ResetPasswordController>();
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundDark,
        title: Text(
          "Reset Password",
          style: TextStyle(
            fontSize: getSp(20),
            color: AppColors.backgroundDark,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "old Password",
            fontSize: getSp(14),
            color: AppColors.elevatedSurfaceLight,
          ),
          SizedBox(height: getHeight(14)),
          CustomTextField(
            controller: controller.newPasswordController,
            hintText: "",
          ),
          SizedBox(height: getHeight(14)),
          CustomText(
            text: "New Password",
            fontSize: getSp(14),
            color: AppColors.elevatedSurfaceLight,
          ),
          CustomTextField(
            controller: controller.confirmPasswordController,
            hintText: "",
          ),

          Obx(
            () => Column(
              children: [
                Text(
                  controller.email.value,
                  style: const TextStyle(
                    fontSize: 24,
                    color: AppColors.elevatedSurfaceLight,
                  ),
                ),
                Text(
                  controller.token.value,
                  style: const TextStyle(
                    fontSize: 24,
                    color: AppColors.elevatedSurfaceLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
