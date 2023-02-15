import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:nepaldetials/controller/controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DistrictController());
  }
}
