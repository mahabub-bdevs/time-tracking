import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../controller/splash_controller.dart';
import '../widgets/splash_logo_widget.dart';
import '../widgets/splash_text_widget.dart';
import '../widgets/splash_loader_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: context.appColors.background,

      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(ImagePath.splashScreens)),
        ),
        child: Center(
          child: Image.asset(
            ImagePath.preciseClockIcon,
            height: getHeight(400),
            width: getWidth(400),
          ),
        ),
      ),
    );
  }
}
