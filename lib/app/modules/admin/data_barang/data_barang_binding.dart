import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/data_barang/data_barang_controller.dart';

class PetugasGudangDataBarangBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetugasGudangDataBarangController>(
        () => PetugasGudangDataBarangController());
  }
}
