import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/dashboard/dashboard_controller.dart';

class PetugasGudangDashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetugasGudangDashboardController>(
        () => PetugasGudangDashboardController());
  }
}
