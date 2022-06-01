import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/pengajuan/pengajuan_controller.dart';

import '../../../../core/theme/text_theme.dart';
import '../../global/login/login_controller.dart';

class PetugasGudangPengajuan extends GetView<PetugasGudangPengajuanController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loginController = Get.find<LoginController>();
    final controller = Get.put(PetugasGudangPengajuanController());

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
            child: TablePengajuanBaru(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 20),
            child: TableRekapPengajuan(),
          ),
        ],
      ),
    ));
  }

  Widget TablePengajuanBaru() {
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
            "Rekap Data Pengajuan",
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
      rows: controller.pengajuanBaru
          .map(
            (item) => DataRow(cells: <DataCell>[
              DataCell(
                Row(
                  children: [
                    Text(
                      "Pengajuan " + item["barang"].toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffBA9D4B)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.angleRight)),
                  ),
                ],
              )),
            ]),
          )
          .toList(),
    );
  }

  Widget TableRekapPengajuan() {
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
            "Data Pengajuan Baru",
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
      rows: controller.pengajuanBaru
          .map(
            (item) => DataRow(cells: <DataCell>[
              DataCell(
                Row(
                  children: [
                    Text(
                      "Pengajuan " + item["barang"].toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 9),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            item['status'] == true ? Colors.green : Colors.red),
                    child: IconButton(
                      onPressed: () {},
                      icon: item['status'] == true
                          ? Icon(FontAwesomeIcons.check)
                          : Icon(FontAwesomeIcons.exclamation),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffBA9D4B)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.angleRight)),
                  ),
                ],
              )),
            ]),
          )
          .toList(),
    );
  }
}
