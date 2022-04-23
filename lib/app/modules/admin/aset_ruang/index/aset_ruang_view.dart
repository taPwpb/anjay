import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/aset_ruang/index/aset_ruang_controller.dart';
import 'package:pwpb1/app/modules/global/login/login_controller.dart';
import 'package:pwpb1/routes/pages.dart';

import '../../../../../core/theme/text_theme.dart';

class PetugasGudangAsetRuang extends GetView<PetugasGudangAsetRuangController> {
  final loginController = Get.find<LoginController>();
  final controller = Get.put(PetugasGudangAsetRuangController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.PETUGASGUDANGADDASETRUANG);
        },
        child: const Icon(
          FontAwesomeIcons.plus,
          color: Color(0xff31314f),
        ),
        backgroundColor: const Color(0xffBA9D4B),
        elevation: 12,
      ),
      body: SafeArea(
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
              margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 50),
              child: TableAsetRuang(),
            ),
          ],
        ),
      )),
    );
  }

  Widget TableAsetRuang() {
    return DataTable(
      columnSpacing: 0,
      sortColumnIndex: controller.currentSortColumn.value,
      sortAscending: controller.isAscending.value,
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
        DataColumn(label: Text("Kelas")),
        DataColumn(
            label: Text("JumlahBarang"),
            onSort: (index, _) {
              controller.currentSortColumn.value = index;
              if (controller.isAscending.value == true) {
                controller.isAscending.value = false;
              }
            }),
      ],
      rows: controller.asetList
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
