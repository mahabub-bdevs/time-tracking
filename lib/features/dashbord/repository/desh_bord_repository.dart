import 'package:get/get.dart';

import '../../../core/network/api_endpoints.dart';
import '../../../core/network/network_caller.dart';
import '../../../core/network/response_data.dart';

class DeshBordRepository {
  final NetworkCaller _caller;

  DeshBordRepository({NetworkCaller? networkCaller})
    : _caller = networkCaller ?? Get.find<NetworkCaller>();

  Future<ResponseData<dynamic>> getChartData() async {
    return _caller.getRequest(ApiEndpoints.deshBordUrl);
  }
}
