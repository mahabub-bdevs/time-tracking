import '../../../core/network/api_endpoints.dart';
import '../../../core/network/network_caller.dart';
import 'package:get/get.dart';

import '../../../core/network/response_data.dart';
import '../model/profile_deteiles.dart';
import '../model/user.dart';

/// Handles all home/feed related network calls and data mapping.
/// This ensures the Controller only deals with rich objects, not raw JSON.
class ProfileRepository {
  final NetworkCaller _caller;

  ProfileRepository({NetworkCaller? networkCaller})
    : _caller = networkCaller ?? Get.find<NetworkCaller>();

  /// Fetches a paginated list of posts and maps them to [UserModel].
  Future<User> getUserInfo() async {
    final response = await _caller.getRequest(ApiEndpoints.profileUrl);

    if (response.isSuccess && response.data != null) {
      return User.fromJson(response.data['user']);
    }

    throw Exception(
      response.errorMessage.isNotEmpty
          ? response.errorMessage
          : 'Failed to load posts',
    );
  }

  Future<ProfileDetails> getProfileDetails() async {
    final responce = await _caller.getRequest(ApiEndpoints.profileDeteles);
    if (responce.isSuccess && responce.data != null) {

      final data=responce.data;
      return ProfileDetails.fromJson(data);
    }
    throw Exception(
      responce.errorMessage.isNotEmpty
          ? responce.errorMessage
          : 'Failed to load posts',
    );
  }

  Future<ResponseData<dynamic>> changeProfilePhoto({
    required String imagePath,
  }) async {
    return await _caller.multipartPostRequest(
      url: ApiEndpoints.profilePhotoChange,
      fields: {},
      fileFieldName: "image",
      filePath: imagePath,
    );
  }

  Future<ResponseData<dynamic>> changeCoverPhoto({
    required String imagePath,
  }) async {
    return await _caller.multipartPostRequest(
      url: ApiEndpoints.coverPhoto,
      fields: {},
      fileFieldName: "image",
      filePath: imagePath,
    );
  }

  Future<ResponseData<dynamic>> updateProfile({
    required String firstname,
    required String lastName,
    required String phone,
    required String address,
  }) async {
    return await _caller.putRequest(
      ApiEndpoints.profileDeteles,
      body: {
        "first_name": firstname,
        "last_name": lastName,
        "phone": phone,
        "address": address,
      },
    );
  }
}
