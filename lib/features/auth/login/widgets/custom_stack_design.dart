import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_size_class.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_text.dart';

class CustomStackDesign extends StatelessWidget {
  final String? titleText;
  final String? subtitle;
  final Widget? textFiled;
  const CustomStackDesign({
    super.key,
    this.titleText,
    this.subtitle,
    this.textFiled,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ১. ব্যাকগ্রাউন্ড কালার
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

        // ২. উপরের ভেক্টর ইমেজ (IgnorePointer যোগ করা হয়েছে)
        IgnorePointer(
          child: Positioned(
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
        ),

        // ৩. নিচের আইকন (IgnorePointer যোগ করা হয়েছে)
        IgnorePointer(
          child: Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Image.asset(
              ImagePath.preciseClockIcon,
              height: getHeight(40),
              width: getWidth(50),
            ),
          ),
        ),

        // ৪. নিচের প্যাটার্ন ইমেজ (এটিই আপনার ক্লিক ব্লক করছিল)
        IgnorePointer(
          child: Positioned(
            bottom: -250,
            left: 0,
            right: 0,
            child: Image.asset(
              ImagePath.patternImage,
              height: getHeight(505),
              width: getWidth(495),
            ),
          ),
        ),

        // ৫. আপনার কন্টেন্ট (বাটন এবং টেক্সটফিল্ড - এখন এটি সবার উপরে থাকবে)
        Positioned.fill(
          child: Center(
            child: SingleChildScrollView( // কিবোর্ড ওভারফ্লো এড়াতে এটি যোগ করুন
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(AppDimensions.padding20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      text: titleText ?? AppStrings.welcomeToPrecise.tr,
                      fontFamily: AppFont.inter,
                      color: AppColors.elevatedSurfaceLight,
                      fontSize: getSp(AppDimensions.font24),
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: getHeight(AppDimensions.space12)),
                    CustomText(
                      text: subtitle ?? AppStrings.loginToYourAccount.tr,
                      fontSize: getSp(AppDimensions.font12),
                      color: AppColors.elevatedSurfaceLight.withValues(
                        alpha: 0.4,
                      ),
                      textAlign: TextAlign.center,
                      fontFamily: AppFont.inter,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: getHeight(AppDimensions.space32)),
                    textFiled ?? const Column(children: []),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}