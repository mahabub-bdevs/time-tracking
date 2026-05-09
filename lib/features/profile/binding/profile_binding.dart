import 'package:get/get.dart';

import '../../auth/login/controller/logout_controller.dart';
import '../../auth/repository/auth_repository.dart';
import '../controller/change_password.dart';
import '../controller/change_profile_controller.dart';
import '../controller/cover_photo_controller.dart';
import '../controller/profile_controller.dart';
import '../controller/update_controller.dart';
import '../repository/profile_repository.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileRepository());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => ChangePassword());
    Get.lazyPut(() => ChangeProfileController());
    Get.lazyPut(() => CoverPhotoController());
    Get.lazyPut(() => UpdateController());
    Get.lazyPut(() => LogoutController());
    Get.lazyPut(() => AuthRepository());
    //   // Since Home is a tab within Main, we often put it here or keep it separate.
    //   // For this template, let's put it here so Home is ready when Main loads.
    //
  }
}
