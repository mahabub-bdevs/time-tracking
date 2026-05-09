import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/core.dart';
import '../controller/forget_controller.dart';
import '../controller/login_controller.dart';
import '../widgets/custom_stack_design.dart';

class ForgetScreens extends StatelessWidget {
  const ForgetScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ForgetController>();
    return Scaffold(
      body: CustomStackDesign(
        titleText: "Forgot Password",
        subtitle: "Lost your password? Please enter your\n email address.",
        textFiled: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Email",
              fontSize: getSp(AppDimensions.font14),
              fontWeight: FontWeight.w500,
              fontFamily: AppFont.inter,
              color: AppColors.elevatedSurfaceLight,
            ),
            SizedBox(height: getHeight(AppDimensions.space12)),
            CustomTextField(
              controller: controller.forgotPasswordController,
              hintText: "admin@gmail.com",
            ),
            SizedBox(height: getHeight(AppDimensions.space12)),
            Obx(
              () => GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  print("hfjhj");
                  controller.forgotPassword();
                },
                child: Container(
                  height: getHeight(45),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.elevatedSurfaceLight,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const CustomText(
                            text: "Send",
                            fontWeight: FontWeight.bold,
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
