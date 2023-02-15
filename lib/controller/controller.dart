import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nepaldetials/service/remote_service.dart';

class DistrictController extends GetxController {
  var district = [].obs;
  var isLoading = false.obs;

  Future getDistricts() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchDistrict();
      if (data != null) {
        district.value = data;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDistricts();
  }
}
