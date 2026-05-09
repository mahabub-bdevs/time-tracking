import 'package:get/get.dart';
import '../model/profile_deteiles.dart';
import '../model/user.dart';
import '../repository/profile_repository.dart';

class ProfileController extends GetxController {
  final ProfileRepository _profileRepository = Get.find<ProfileRepository>();

  final isLoading = false.obs;
  final errorMessage = ''.obs;

  final user = Rxn<User>();
  final profileData = Rxn<ProfileDetails>();

  final positionExpanded = false.obs;
  final rateExpanded = false.obs;
  final laborBurdenExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    getProfile();
    getProfileDeteiles();
  }

  Future<void> getProfile() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final result = await _profileRepository.getUserInfo();

      if (!result.isNull) {
        user.value = result;
      } else {
        errorMessage.value = "No user data found";
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getProfileDeteiles() async {
    try {
      isLoading.value = true;
      errorMessage.value = "";
      final results = await _profileRepository.getProfileDetails();
      if (!results.isNull) {
        profileData.value = results;
      } else {
        errorMessage.value = "No Profile data found";

        print("responce data is profile  data  $results");
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
