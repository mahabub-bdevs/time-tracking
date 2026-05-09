import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/core.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../routes/app_routes.dart';
import '../controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, -1.2),
                radius: 1.3,
                colors: [Color(0xFF1F1F1F), Colors.black],
              ),
            ),
          ),

          Positioned(
            left: 7,
            right: -50,
            top: -180,
            child: Transform.rotate(
              angle: 0.1,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 22.0, sigmaY: 22.0),
                child: Image.asset(
                  ImagePath.vectorImage,
                  height: 500.57,
                  width: 550,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: -250,
            left: 0,
            right: 0,
            child: IgnorePointer(
              child: Image.asset(
                ImagePath.patternImage,
                height: getHeight(505),
                width: getWidth(495),
              ),
            ),
          ),

          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Image.asset(
              ImagePath.preciseClockIcon,
              height: getHeight(40),
              width: getWidth(50),
            ),
          ),

          Positioned.fill(
            child: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: getWidth(AppDimensions.padding20),
                  ),
                  child: Form(
                    key: controller.formKey,

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CustomText(
                            text: AppStrings.welcomeToPrecise.tr,
                            fontFamily: AppFont.inter,
                            color: AppColors.elevatedSurfaceLight,
                            fontSize: getSp(AppDimensions.font24),
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: getHeight(AppDimensions.space12)),
                        Center(
                          child: CustomText(
                            text: AppStrings.loginToYourAccount.tr,
                            fontSize: getSp(AppDimensions.font12),
                            color: AppColors.elevatedSurfaceLight.withOpacity(
                              0.4,
                            ),
                            fontFamily: AppFont.inter,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: getHeight(AppDimensions.space32)),

                        CustomText(
                          text: "User Name",
                          fontSize: getSp(AppDimensions.font14),
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.inter,
                          color: AppColors.elevatedSurfaceLight,
                        ),
                        SizedBox(height: getHeight(AppDimensions.space12)),
                        CustomTextField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'User Name is required';
                            }

                            return null;
                          },
                          controller: controller.emailController,
                          hintText: "admin",
                        ),

                        SizedBox(height: getHeight(AppDimensions.padding14)),

                        // পাসওয়ার্ড সেকশন
                        CustomText(
                          text: AppStrings.password.tr,
                          fontSize: getSp(AppDimensions.font14),
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.inter,
                          color: AppColors.elevatedSurfaceLight,
                        ),
                        SizedBox(height: getHeight(AppDimensions.space12)),
                        CustomTextField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Your Password required";
                            }
                            if (value.length <= 8) {
                              return "Password must be at least 8 characters long";
                            }
                            return null;
                          },

                          controller: controller.passwordController,
                          hintText: "••••••••••",
                          maxLine: 1,
                          minLine: 1,
                          isPassword: true,
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: AppColors.elevatedSurfaceLight,
                            size: getHeight(AppDimensions.icon24),
                          ),
                        ),

                        SizedBox(height: getHeight(AppDimensions.space20)),

                        Obx(
                          () => controller.errorMessage.value.isNotEmpty
                              ? Padding(
                                  padding: EdgeInsets.only(
                                    bottom: getHeight(AppDimensions.space10),
                                  ),
                                  child: CustomText(
                                    text: controller.errorMessage.value,
                                    fontSize: getSp(AppDimensions.font14),
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),

                        Obx(
                          () => CustomButton(
                            isLoading: controller.isLoading.value,
                            color: AppColors.elevatedSurfaceLight,
                            textColor: AppColors.backgroundDark,
                            text: AppStrings.login.tr,
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                controller.login();
                              } else {
                                print("Your account not validated");
                              }
                            },
                          ),
                        ),

                        SizedBox(height: getHeight(AppDimensions.space20)),

                        Center(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.forgotPassword);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(
                                text: AppStrings.forgetPassword.tr,
                                fontFamily: AppFont.inter,
                                fontSize: getSp(AppDimensions.font14),
                                fontWeight: FontWeight.w400,
                                color: AppColors.elevatedSurfaceLight,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
