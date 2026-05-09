import 'package:get/get.dart';
import '../features/auth/login/view/forget_screens.dart';
import '../features/auth/login/view/reset_password_view.dart';
import '../features/home/binding/home_binding.dart';
import '../features/home/view/home_screens.dart';
import '../features/profile/binding/profile_binding.dart';
import '../features/profile/view/profile_view.dart';
import '../features/splash/binding/splash_binding.dart';
import '../features/splash/view/splash_screen.dart';
import 'app_routes.dart';
import '../features/auth/login/view/login_screen.dart';
import '../features/auth/login/binding/login_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => const ForgetScreens(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreens(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.resetPassword,
      page: () => const ResetPasswordView(),
      binding: LoginBinding(),
    ),
  ];
}
