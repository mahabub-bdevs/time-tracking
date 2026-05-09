import 'package:get/get.dart';
import '../../../profile/controller/profile_controller.dart';
import '../controller/forget_controller.dart';
import '../controller/login_controller.dart';
import '../../repository/auth_repository.dart';
import '../controller/logout_controller.dart';
import '../controller/reset_password_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepository());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<ForgetController>(() => ForgetController());
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
    Get.lazyPut<LogoutController>(() => LogoutController());
  }
}
