import 'package:get/get.dart';

class PetugasGudangHomeController extends GetxController {
  var tabIndex = 0;

  var words = [
    'Daftar\nBarang',
    'Daftar\nPengajuan',
    'Aset\nRuang',
  ].obs;

  var notifs = [
    'Kamis, 10 Januari 2022\nPengajuan Barang: Meja',
    'Jumat, 11 Januari 2022\nPengajuan Barang: Kursi',
    'Sabtu, 12 Januari 2022\nPengajuan Barang: Pancing',
    'Minggu, 13 Januari 2022\nPengajuan Barang: Bantal',
  ].obs;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
