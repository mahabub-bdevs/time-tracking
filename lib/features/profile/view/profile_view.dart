import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../../auth/login/controller/logout_controller.dart';
import '../controller/change_password.dart';
import '../controller/change_profile_controller.dart';
import '../controller/cover_photo_controller.dart';
import '../controller/profile_controller.dart';
import '../controller/update_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    final changePassController = Get.find<ChangePassword>();
    final changeProfileController = Get.find<ChangeProfileController>();
    final changeCoverController = Get.find<CoverPhotoController>();
    final updateProfile = Get.find<UpdateController>();
    final authController = Get.find<LogoutController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundDark,
        leadingWidth: getHeight(70),
        leading: Padding(
          padding: EdgeInsets.only(left: getWidth(30)),
          child: Container(
            height: getHeight(48),
            width: getWidth(40),
            decoration: BoxDecoration(
              color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.07),
              borderRadius: BorderRadius.circular(10),
              border: BoxBorder.all(
                color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.2),
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
            child: Center(
              child: Image.asset(
                ImagePath.manuIcon,
                height: getHeight(24),
                width: getWidth(24),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: CustomText(
          text: "Profile",
          fontSize: getSp(AppDimensions.font18),
          color: AppColors.elevatedSurfaceLight,
          fontWeight: FontWeight.w700,
          fontFamily: AppFont.inter,
        ),
        actions: [
          Container(
            margin: EdgeInsetsGeometry.only(right: getWidth(20)),
            height: getHeight(48),
            width: getWidth(40),
            decoration: BoxDecoration(
              color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.07),
              borderRadius: BorderRadius.circular(10),
              border: BoxBorder.all(
                color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.2),
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    ImagePath.notificationIcon,
                    height: getHeight(24),
                    width: getWidth(24),
                  ),
                  Container(
                    height: getHeight(5),
                    width: getWidth(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.errorLight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.backgroundDark,
      body: Padding(
        padding: EdgeInsets.only(
          left: getWidth(20),
          right: getWidth(20),
          top: getHeight(16),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                if (controller.profileData.value == null) {
                  return const CircularProgressIndicator();
                }
                if (controller.user.value == null) {
                  return const CircularProgressIndicator();
                }
                return Stack(
                  clipBehavior: Clip.none,

                  children: [
                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          changeCoverController.imagePicker();
                          print("click cover photo");
                        },
                        child: Container(
                          height: getHeight(130),
                          width: getWidth(double.infinity),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getRadius(20)),
                            color: AppColors.elevatedSurfaceLight,
                            image: DecorationImage(
                              image:
                                  changeCoverController
                                      .selectedImage
                                      .value
                                      .isNotEmpty
                                  ? FileImage(
                                      File(
                                        changeCoverController
                                            .selectedImage
                                            .value,
                                      ),
                                    )
                                  : NetworkImage(
                                      controller
                                          .profileData
                                          .value!
                                          .userable
                                          .coverUrl,
                                    ),

                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -40,
                      child: Obx(() {
                        if (controller.profileData.value == null) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        final user = controller.profileData.value!;
                        final profileUrl = user.userable.profileUrl;

                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                changeProfileController.pickImage();
                                print("profile photo chick");
                              },
                              child: Container(
                                height: getHeight(68),
                                width: getWidth(68),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  color: AppColors.elevatedSurfaceLight,
                                  image: DecorationImage(
                                    image:
                                        changeProfileController
                                            .selectedImage
                                            .value
                                            .isNotEmpty
                                        ? FileImage(
                                            File(
                                              changeProfileController
                                                  .selectedImage
                                                  .value,
                                            ),
                                          )
                                        : NetworkImage(
                                            user.userable.profileUrl,
                                          ),

                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                );
              }),
              SizedBox(height: getHeight(50)),
              Obx(() {
                if (controller.profileData.value == null) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (controller.user.value == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                return Column(
                  children: [
                    SizedBox(height: getHeight(8)),
                    CustomText(
                      text:
                          "${controller.profileData.value!.firstName} ${controller.user.value!.lastName}",
                      fontSize: 24,
                      color: AppColors.elevatedSurfaceLight,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFont.inter,
                    ),

                    CustomText(
                      text: controller.profileData.value!.email,
                      fontSize: getSp(12),
                      color: AppColors.elevatedSurfaceLight,
                      fontFamily: AppFont.inter,
                    ),

                    SizedBox(height: getHeight(24)),
                    GestureDetector(
                      onTap: () {
                        showEditeProfile(
                          context,
                          updateProfile.fastName,
                          updateProfile.lastName,
                          updateProfile.phoneNumber,
                          updateProfile.address,
                          () {
                            updateProfile.profileUpdate();
                          },
                        );
                      },
                      child: Container(
                        height: getHeight(45),
                        width: getWidth(150),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.elevatedSurfaceLight.withValues(
                            alpha: 0.2,
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_calendar_rounded,
                                size: getHeight(20),
                                color: AppColors.elevatedSurfaceLight,
                              ),
                              SizedBox(width: getWidth(5)),
                              CustomText(
                                text: "Edite",
                                fontSize: getSp(15),
                                color: AppColors.elevatedSurfaceLight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getHeight(20)),
                    Align(
                      alignment: AlignmentGeometry.topStart,
                      child: SizedBox(
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.centerStart,
                              child: CustomText(
                                text: "Profile ",
                                fontSize: getSp(18),
                                color: AppColors.elevatedSurfaceLight,
                                fontFamily: AppFont.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: getHeight(8)),
                            Container(
                              padding: EdgeInsetsGeometry.only(
                                left: getWidth(16),
                                top: getHeight(16),
                                right: getWidth(16),
                                bottom: getHeight(16),
                              ),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getRadius(20),
                                ),
                                color: AppColors.elevatedSurfaceLight
                                    .withValues(alpha: 0.1),
                                border: BoxBorder.all(
                                  color: AppColors.elevatedSurfaceLight
                                      .withValues(alpha: 0.3),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Column(
                                children: [
                                  profileCard(
                                    "Name",
                                    controller.profileData.value!.firstName,
                                  ),
                                  SizedBox(height: getHeight(6)),
                                  Divider(),
                                  SizedBox(height: getHeight(6)),
                                  profileCard(
                                    "Employee ID",
                                    controller
                                        .profileData
                                        .value!
                                        .employeeNumber,
                                  ),
                                  SizedBox(height: getHeight(6)),
                                  const Divider(),
                                  GestureDetector(
                                    onTap: () {
                                      controller.positionExpanded.value =
                                          !controller.positionExpanded.value;
                                    },
                                    child: profileCard(
                                      "Position",
                                      controller.positionExpanded.value
                                          ? controller
                                                .profileData
                                                .value!
                                                .position
                                                .name
                                          : "*****",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: getHeight(10)),
                            Align(
                              alignment: AlignmentGeometry.centerStart,
                              child: CustomText(
                                text: "Wage",
                                fontSize: getSp(18),
                                color: AppColors.elevatedSurfaceLight,
                                fontFamily: AppFont.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: getHeight(10)),
                            Container(
                              padding: EdgeInsetsGeometry.only(
                                left: getWidth(16),
                                top: getHeight(16),
                                right: getWidth(16),
                                bottom: getHeight(16),
                              ),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getRadius(20),
                                ),
                                color: AppColors.elevatedSurfaceLight
                                    .withValues(alpha: 0.1),
                                border: BoxBorder.all(
                                  color: AppColors.elevatedSurfaceLight
                                      .withValues(alpha: 0.3),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.rateExpanded.value =
                                          !controller.rateExpanded.value;
                                    },
                                    child: profileCard(
                                      "Rate",
                                      controller.rateExpanded.value
                                          ? controller
                                                .profileData
                                                .value!
                                                .userable
                                                .wage
                                                .rate
                                          : "*****",
                                    ),
                                  ),
                                  SizedBox(height: getHeight(6)),
                                  Divider(),
                                  SizedBox(height: getHeight(6)),
                                  GestureDetector(
                                    onTap: () {
                                      controller.laborBurdenExpanded.value =
                                          !controller.laborBurdenExpanded.value;
                                    },
                                    child: profileCard(
                                      "Labor Burden",
                                      controller.laborBurdenExpanded.value
                                          ? controller
                                                .profileData
                                                .value!
                                                .userable
                                                .wage
                                                .laborBurden
                                          : "*****",
                                    ),
                                  ),
                                  SizedBox(height: getHeight(6)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: getHeight(20)),
                    Align(
                      alignment: AlignmentGeometry.topStart,
                      child: SizedBox(
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.centerStart,
                              child: CustomText(
                                text: "Contact",
                                fontSize: getSp(18),
                                color: AppColors.elevatedSurfaceLight,
                                fontFamily: AppFont.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: getHeight(8)),
                            Container(
                              padding: EdgeInsetsGeometry.only(
                                left: getWidth(16),
                                top: getHeight(16),
                                right: getWidth(16),
                                bottom: getHeight(16),
                              ),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getRadius(20),
                                ),
                                color: AppColors.elevatedSurfaceLight
                                    .withValues(alpha: 0.1),
                                border: BoxBorder.all(
                                  color: AppColors.elevatedSurfaceLight
                                      .withValues(alpha: 0.3),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Column(
                                children: [
                                  profileCard(
                                    "Email",
                                    controller.profileData.value!.email,
                                  ),
                                  SizedBox(height: getHeight(6)),
                                  Divider(),
                                  SizedBox(height: getHeight(6)),
                                  profileCard(
                                    "Phone",
                                    controller
                                        .profileData
                                        .value!
                                        .userable
                                        .phone,
                                  ),
                                  SizedBox(height: getHeight(6)),
                                  const Divider(),
                                  profileCard(
                                    "Address",
                                    controller
                                            .profileData
                                            .value!
                                            .userable
                                            .address ??
                                        "null",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: getHeight(10)),
                            Align(
                              alignment: AlignmentGeometry.centerStart,
                              child: CustomText(
                                text: "Login",
                                fontSize: getSp(18),
                                color: AppColors.elevatedSurfaceLight,
                                fontFamily: AppFont.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: getHeight(10)),
                            Container(
                              padding: EdgeInsetsGeometry.only(
                                left: getWidth(16),
                                top: getHeight(16),
                                right: getWidth(16),
                                bottom: getHeight(16),
                              ),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getRadius(20),
                                ),
                                color: AppColors.elevatedSurfaceLight
                                    .withValues(alpha: 0.1),
                                border: BoxBorder.all(
                                  color: AppColors.elevatedSurfaceLight
                                      .withValues(alpha: 0.3),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Column(
                                children: [
                                  profileCard(
                                    "UserName",
                                    controller.profileData.value!.username,
                                  ),
                                  SizedBox(height: getHeight(6)),
                                  Divider(),
                                  SizedBox(height: getHeight(6)),
                                  profileCard(
                                    "Pin Code",
                                    controller.profileData.value!.pinCode,
                                  ),
                                  SizedBox(height: getHeight(6)),
                                  Divider(),
                                  SizedBox(height: getHeight(6)),
                                  CustomButton(
                                    text: "Change Password",
                                    onPressed: () {
                                      showMyPerfectDialog(
                                        context,
                                        changePassController.oldPassword,
                                        changePassController.newPassword,
                                      );
                                    },
                                    color: AppColors.elevatedSurfaceLight
                                        .withValues(alpha: 0.1),
                                  ),
                                  SizedBox(height: getHeight(10)),
                                  authController.isLoading.value
                                      ? const Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : CustomButton(
                                          text: "LogOut",
                                          onPressed: () {
                                            FocusScope.of(context).unfocus();

                                            showLogOutDialog(context, () {
                                              Navigator.of(context).pop();

                                              Future.delayed(
                                                const Duration(
                                                  milliseconds: 100,
                                                ),
                                                () {
                                                  authController.logOut();
                                                },
                                              );
                                            });
                                          },
                                          color: AppColors.backgroundDark
                                              .withValues(alpha: 0.4),
                                          textColor:
                                              AppColors.elevatedSurfaceLight,
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileCard(String title, String subTitle) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            fontSize: getSp(14),
            color: AppColors.elevatedSurfaceLight.withValues(alpha: 0.5),
            fontWeight: FontWeight.w400,
            fontFamily: AppFont.inter,
          ),
          CustomText(
            text: subTitle,
            fontSize: getSp(14),
            color: AppColors.elevatedSurfaceLight,
            fontWeight: FontWeight.w400,
            fontFamily: AppFont.inter,
          ),
        ],
      ),
    );
  }

  void showMyPerfectDialog(
    BuildContext context,
    TextEditingController oldPassword,
    TextEditingController newPassword,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SizedBox(
          width: getWidth(double.infinity),
          child: Center(
            child: SingleChildScrollView(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.black87,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Change Password",
                        fontSize: getSp(16),
                        color: AppColors.elevatedSurfaceLight,
                        fontFamily: AppFont.inter,
                        fontWeight: FontWeight.w400,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.highlight_remove,
                          size: getHeight(24),
                          color: AppColors.elevatedSurfaceLight,
                        ),
                      ),
                    ],
                  ),
                  content: Column(
                    children: [
                      CustomTextField(
                        controller: oldPassword,
                        hintText: "password",
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      SizedBox(height: getHeight(10)),
                      CustomTextField(
                        controller: newPassword,
                        hintText: "confirm password",
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ],
                  ),
                  actions: [
                    CustomButton(
                      text: "Change",
                      textColor: AppColors.backgroundDark,
                      onPressed: () {},
                      color: AppColors.elevatedSurfaceLight,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void showLogOutDialog(BuildContext context, VoidCallback onTap) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SizedBox(
          width: getWidth(double.infinity),
          child: Center(
            child: SingleChildScrollView(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.black87,
                  title: CustomText(
                    text: "লগআউট নিশ্চিত করুন",
                    fontSize: getSp(16),
                    color: AppColors.elevatedSurfaceLight,
                    fontFamily: AppFont.inter,
                    fontWeight: FontWeight.w400,
                  ),
                  content: Column(
                    children: [
                      CustomText(
                        text:
                            "আপনি কি নিশ্চিত যে আপনি আপনার অ্যাকাউন্ট থেকে লগআউট করতে চান?",
                        fontSize: getSp(14),
                        color: AppColors.elevatedSurfaceLight,
                        fontFamily: AppFont.inter,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  actions: [
                    CustomButton(
                      text: "না",
                      textColor: AppColors.backgroundDark,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: AppColors.elevatedSurfaceLight,
                    ),
                    SizedBox(height: getHeight(20)),
                    CustomButton(
                      text: "লগআউট",
                      textColor: AppColors.backgroundDark,
                      onPressed: onTap,
                      color: AppColors.elevatedSurfaceLight,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void showEditeProfile(
    BuildContext context,
    TextEditingController fastName,
    TextEditingController lastName,
    TextEditingController phone,
    TextEditingController address,
    VoidCallback onTap,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.black87,
            title: Padding(
              padding: EdgeInsets.only(
                left: getWidth(16),
                right: getWidth(16),
                top: getHeight(16),
                bottom: getHeight(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Update Profile",
                    fontSize: getSp(16),
                    color: AppColors.elevatedSurfaceLight,
                    fontFamily: AppFont.inter,
                    fontWeight: FontWeight.w400,
                  ),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.highlight_remove,
                      size: getHeight(24),
                      color: AppColors.elevatedSurfaceLight,
                    ),
                  ),
                ],
              ),
            ),
            content: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsGeometry.only(
                  top: getHeight(10),
                  left: getWidth(2),
                  right: getWidth(2),
                  bottom: getHeight(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: fastName,
                            hintText: "First Name",
                          ),
                        ),
                        SizedBox(width: getWidth(10)),
                        Expanded(
                          child: CustomTextField(
                            controller: lastName,
                            hintText: "Last Name",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getHeight(10)),

                    // ── Phone ─────────────────────────────────
                    CustomTextField(
                      controller: phone,
                      hintText: "Phone Number",
                    ),
                    SizedBox(height: getHeight(10)),

                    // ── Address ───────────────────────────────
                    CustomTextField(
                      controller: address,
                      hintText: "Address",
                      minLine: 2,
                      maxLine: 3,
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              CustomButton(
                text: "Update",
                textColor: AppColors.backgroundDark,
                onPressed: onTap,
                color: AppColors.elevatedSurfaceLight,
              ),
            ],
          ),
        );
      },
    );
  }
}
