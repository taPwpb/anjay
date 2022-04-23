import 'package:get/get.dart';

class PetugasGudangAsetRuangController extends GetxController {
  var asetList = [
    {'id': '1', 'kelas': 'Lab RPL 1', 'jumlah': '36', 'icon': 'person'},
    {'id': '2', 'kelas': 'Lab RPL 2', 'jumlah': '32', 'icon': 'person'},
    {'id': '3', 'kelas': 'Ruang Teori 1', 'jumlah': '34', 'icon': 'person'},
    {'id': '4', 'kelas': 'Lab TKJ 1', 'jumlah': '36', 'icon': 'person'},
    {'id': '5', 'kelas': 'Lab MM A', 'jumlah': '39', 'icon': 'person'},
    {'id': '6', 'kelas': 'Lab PD ', 'jumlah': '30', 'icon': 'person'},
    {'id': '7', 'kelas': 'Lab Meka', 'jumlah': '26', 'icon': 'person'},
    {'id': '8', 'kelas': 'Ruang Teori 2', 'jumlah': '16', 'icon': 'person'},
    {'id': '9', 'kelas': 'Ruang Teori 3', 'jumlah': '56', 'icon': 'person'},
    {'id': '10', 'kelas': 'Ruang Teori 4', 'jumlah': '96', 'icon': 'person'},
    {'id': '11', 'kelas': 'Ruang Teori 5', 'jumlah': '12', 'icon': 'person'},
  ].obs;

  var currentSortColumn = 0.obs;
  var isAscending = true.obs;
}
