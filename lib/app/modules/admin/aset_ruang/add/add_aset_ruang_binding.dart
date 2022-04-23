import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/aset_ruang/add/add_aset_ruang_controller.dart';

class PetugasGudangAddAsetRuangBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetugasGudangAddAsetRuangController>(
        () => PetugasGudangAddAsetRuangController());
  }
}
