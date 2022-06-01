import 'package:get/get.dart';

class PetugasGudangPengajuanController extends GetxController {
  var pengajuanBaru = [
    {
      'id': '1',
      'kelas': 'Lab RPL 1',
      'barang': 'Kursi',
      'jumlah': '10',
      'icon': 'person',
      'harga': '1.135.000',
      'tanggal_pengajuan': '30/12/2022',
      'tanggal_verifikasi': '',
      'pemohon': 'Prima Rizky',
      'catatan':
          'Kekurangan kursi untuk 5 orang 5 kursi tambahan untuk kursi cadangan',
      'status': true,
    },
    {
      'id': '2',
      'kelas': 'Lab RPL 2',
      'barang': 'Kursi',
      'jumlah': '32',
      'icon': 'person',
      'harga': '1.135.000',
      'tanggal_pengajuan': '30/12/2022',
      'tanggal_verifikasi': '',
      'pemohon': 'Prima Rizky',
      'catatan':
          'Kekurangan kursi untuk 5 orang 5 kursi tambahan untuk kursi cadangan',
      'status': true,
    },
    {
      'id': '3',
      'kelas': 'Ruang Teori 1',
      'barang': 'Kursi',
      'jumlah': '34',
      'icon': 'person',
      'harga': '1.135.000',
      'tanggal_pengajuan': '30/12/2022',
      'tanggal_verifikasi': '',
      'pemohon': 'Prima Rizky',
      'catatan':
          'Kekurangan kursi untuk 5 orang 5 kursi tambahan untuk kursi cadangan',
      'status': false,
    },
    {
      'id': '4',
      'kelas': 'Lab TKJ 1',
      'barang': 'Kursi',
      'jumlah': '36',
      'icon': 'person',
      'harga': '1.135.000',
      'tanggal_pengajuan': '30/12/2022',
      'tanggal_verifikasi': '',
      'pemohon': 'Prima Rizky',
      'catatan':
          'Kekurangan kursi untuk 5 orang 5 kursi tambahan untuk kursi cadangan',
      'status': true,
    },
  ].obs;

  var currentSortColumn = 0.obs;
  var isAscending = true.obs;
}
