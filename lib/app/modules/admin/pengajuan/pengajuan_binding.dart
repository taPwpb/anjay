import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/pengajuan/pengajuan_controller.dart';

class PetugasGudangPengajuanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PetugasGudangPengajuanController());
  }
}
