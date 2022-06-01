import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/data_barang/data_barang_controller.dart';

import '../../../../core/theme/text_theme.dart';
import '../../global/login/login_controller.dart';

class PetugasGudangDataBarang
    extends GetView<PetugasGudangDataBarangController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loginController = Get.find<LoginController>();
    final controller = Get.put(PetugasGudangDataBarangController());
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () => loginController.logout(),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
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
                    Text(
                      "Logout",
                      style: title_text,
                    ),
                    Icon(FontAwesomeIcons.signOutAlt)
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 20),
            child: TableDataBarang(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 20),
            child: TableDataRuang(),
          ),
        ],
      ),
    ));
  }

  Widget TableDataBarang() {
    return DataTable(
      columnSpacing: 100,
      sortColumnIndex: controller.currentSortColumn.value,
      sortAscending: controller.isAscending.value,
      dividerThickness: 2,
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
        DataColumn(
          label: Text(
            "Data Barang",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
            label: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.angleRight)),
            onSort: (index, _) {
              controller.currentSortColumn.value = index;
              if (controller.isAscending.value == true) {
                controller.isAscending.value = false;
              }
            }),
      ],
      rows: controller.dataBarang
          .map(
            (item) => DataRow(cells: <DataCell>[
              DataCell(
                Row(
                  children: [
                    Text(
                      item["namabarang"].toString(),
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
                    "Rp. " + item["harga"].toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ]),
          )
          .toList(),
    );
  }

  Widget TableDataRuang() {
    return DataTable(
      columnSpacing: 100,
      sortColumnIndex: controller.currentSortColumn.value,
      sortAscending: controller.isAscending.value,
      dividerThickness: 2,
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
        DataColumn(
          label: Text(
            "Data Ruang",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataColumn(
            label: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.angleRight)),
            onSort: (index, _) {
              controller.currentSortColumn.value = index;
              if (controller.isAscending.value == true) {
                controller.isAscending.value = false;
              }
            }),
      ],
      rows: controller.dataRuang
          .map(
            (item) => DataRow(cells: <DataCell>[
              DataCell(
                Row(
                  children: [
                    Text(
                      item["namaruang"].toString(),
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
                    item["kapasitas"].toString() + " Barang",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ]),
          )
          .toList(),
    );
  }
}
