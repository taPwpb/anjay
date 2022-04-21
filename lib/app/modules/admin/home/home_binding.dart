import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/home/home_controller.dart';

class PetugasGudangHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetugasGudangHomeController>(
        () => PetugasGudangHomeController());
  }
}
