import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());

    //   // Since Home is a tab within Main, we often put it here or keep it separate.
    //   // For this template, let's put it here so Home is ready when Main loads.
    //
  }
}
