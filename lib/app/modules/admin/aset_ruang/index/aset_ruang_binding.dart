import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/aset_ruang/index/aset_ruang_controller.dart';

class PetugasGudangAsetRuangBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetugasGudangAsetRuangController>(
        () => PetugasGudangAsetRuangController());
  }
}
