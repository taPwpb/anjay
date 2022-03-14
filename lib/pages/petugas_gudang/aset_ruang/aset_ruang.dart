import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/pages/petugas_gudang/aset_ruang/tambah_aset.dart';
import 'package:pwpb1/pages/petugas_gudang/home_page.dart';

class AsetRuangPage extends StatelessWidget {
  const AsetRuangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const TambahAsetPage());
          print("ss");
        },
        child: const Icon(
          FontAwesomeIcons.plus,
          color: Color(0xff31314f),
        ),
        backgroundColor: const Color(0xffBA9D4B),
        elevation: 12,
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 21),
                child: const Text(
                  "Aset Ruangan",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: size.width * 0.3,
                margin: const EdgeInsets.only(top: 24, right: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(FontAwesomeIcons.userCircle),
                    Text("Admin"),
                  ],
                ),
              ),
            ],
          ),
          const TableAsetRuang(),
        ],
      ),
    );
  }
}

final List<Map<String, String>> asetList = [
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
];

class TableAsetRuang extends StatefulWidget {
  const TableAsetRuang({Key? key}) : super(key: key);

  @override
  State<TableAsetRuang> createState() => _TableAsetRuangState();
}

class _TableAsetRuangState extends State<TableAsetRuang> {
  @override
  Widget build(BuildContext context) {
    int _currentSortColumn = 0;
    bool _isAscending = true;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 50),
      child: DataTable(
        sortColumnIndex: _currentSortColumn,
        sortAscending: _isAscending,
        columnSpacing: 0,
        dividerThickness: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.transparent),
        ),
        dataRowHeight: 70,
        headingRowHeight: 75,
        showBottomBorder: true,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xffBA9D4B)),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xff31314f)),
        dataTextStyle: const TextStyle(
          color: Colors.white,
        ),
        columns: [
          const DataColumn(
              label: Text(
            "Kelas",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
          DataColumn(
            label: const Text(
              "Jumlah Barang",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onSort: (columnIndex, _) {
              setState(() {
                _currentSortColumn = columnIndex;
                if (_isAscending == true) {
                  _isAscending = false;
                }
              });
            },
          ),
        ],
        rows: asetList
            .map(
              (item) => DataRow(cells: <DataCell>[
                DataCell(
                  Row(
                    children: [
                      Text(
                        item["kelas"].toString(),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                DataCell(Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      item["jumlah"].toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffBA9D4B)),
                      child: IconButton(
                          onPressed: () {
                            Get.to(const TambahAsetPage());
                          },
                          icon: const Icon(FontAwesomeIcons.angleRight)),
                    ),
                  ],
                )),
              ]),
            )
            .toList(),
      ),
    );
  }
}
