import 'package:get/get.dart';

import '../controller/dash_bord_controller.dart';
import '../repository/desh_bord_repository.dart';

class DashBordBindding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeshBordRepository());
    Get.lazyPut(() => DashBordController());

    //   // Since Home is a tab within Main, we often put it here or keep it separate.
    //   // For this template, let's put it here so Home is ready when Main loads.
    //
  }
}
