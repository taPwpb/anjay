import 'package:get/get.dart';

class PetugasGudangDataBarangController extends GetxController {
  var dataBarang = [
    {
      'id': '1',
      'kodebarang': 'KUR1',
      'namabarang': 'kursi',
      'harga': '500000',
      'jumlah': '190',
      'keterangan': '5 rusak'
    },
    {
      'id': '2',
      'kodebarang': 'MEJ2',
      'namabarang': 'meja',
      'harga': '900000',
      'jumlah': '290',
      'keterangan': '5 rusak'
    },
    {
      'id': '3',
      'kodebarang': 'ALM3',
      'namabarang': 'almari',
      'harga': '4500000',
      'jumlah': '390',
      'keterangan': '5 rusak'
    },
    {
      'id': '4',
      'kodebarang': 'LAN4',
      'namabarang': 'lantai',
      'harga': '1500000',
      'jumlah': '490',
      'keterangan': '5 rusak'
    },
  ].obs;

  var dataRuang = [
    {
      'id': '1',
      'koderuang': 'RPL1',
      'namaruang': 'LAB RPL 1',
      'kapasitas': '30',
      'keterangan': '5 rusak'
    },
    {
      'id': '2',
      'koderuang': 'RPL2',
      'namaruang': 'LAB RPL 2',
      'kapasitas': '50',
      'keterangan': '7 rusak'
    },
    {
      'id': '3',
      'koderuang': 'RPL3',
      'namaruang': 'LAB RPL 3',
      'kapasitas': '45',
      'keterangan': '3 rusak'
    },
    {
      'id': '4',
      'koderuang': 'RT1',
      'namaruang': 'RUANG TEORI 1',
      'kapasitas': '87',
      'keterangan': '8 rusak'
    },
  ].obs;

  var currentSortColumn = 0.obs;
  var isAscending = true.obs;
}
