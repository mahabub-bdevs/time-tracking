import '../../../core/network/api_endpoints.dart';
import '../../../core/network/network_caller.dart';
import '../../../core/network/response_data.dart';
import 'package:get/get.dart';

/// Handles all authentication-related network calls.
/// Controllers should inject this instead of using [NetworkCaller] directly.
class AuthRepository {
  final NetworkCaller _caller;

  AuthRepository({NetworkCaller? networkCaller})
    : _caller = networkCaller ?? Get.find<NetworkCaller>();


  String token = '';
  String email = '';
  /// Sends login credentials to the API.
  Future<ResponseData<dynamic>> login({
    required String email,
    required String password,
  }) {
    return _caller.postRequest(
      ApiEndpoints.loginEndpoint,
      body: {'username': email, 'password': password},
      isAuthCall: true,
    );
  }

  /// Logs out the user by revoking the token on the server.
  Future<ResponseData<dynamic>> logout() {
    return _caller.postRequest(ApiEndpoints.logout);
  }

  Future<ResponseData<dynamic>> forgotPassword({required String email}) {
    return _caller.postRequest(
      ApiEndpoints.forgotUrl,
      body: {"email": email},
      isAuthCall: true,
    );
  }

  Future<ResponseData<dynamic>> addAccount({
    required String name,
    required String roll,
    required String department,
    required String image,
  }) async {
    return _caller.multipartPostRequest(
      url: "",
      fields: {"name": name, "roll": roll, "department": department},
      fileFieldName: "image",
      filePath: image,
    );
  }

  // auth_repository.dart
  Future<ResponseData<dynamic>> resetPassword({
    required String token,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) {
    return _caller.postRequest(
      '${ApiEndpoints.baseUrl}/auth/reset-password',
      body: {
        'token': token,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
      isAuthCall: true,
    );
  }

}
