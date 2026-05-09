import 'package:get/get.dart';
import '../model/desh_bord_model.dart';
import '../repository/desh_bord_repository.dart';

class DashBordController extends GetxController {
  final dashboard = Rxn<DashboardData>();
  final isLoading = false.obs;
  final _repository = Get.find<DeshBordRepository>();

  @override
  void onInit() {
    super.onInit();
    getDashboard();
  }

  Future<void> getDashboard() async {
    isLoading.value = true;
    try {
      final response = await _repository.getChartData();
      if (response.isSuccess) {
        dashboard.value = DashboardData.fromJson(
          response.data,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }

  List<Map<dynamic, dynamic>> get timerList {
    if (dashboard.value == null) return [];

    return [
      {
        "time": dashboard.value?.todayClockIn.toString() ?? "--:--",
        "title": "Clock In",
      },
      {
        "time": dashboard.value?.todayOnBreak.toString() ?? "--:--",
        "title": "On Break",
      },
      {
        "time": dashboard.value?.totalClockOut.toString() ?? "--:--",
        "title": "Clocked Out",
      },
    ];
  }
}
