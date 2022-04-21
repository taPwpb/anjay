import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/aset_ruang/aset_ruang_view.dart';
import 'package:pwpb1/app/modules/admin/dashboard/dashboard_controller.dart';
import 'package:pwpb1/app/modules/admin/data_barang/data_barang_view.dart';
import 'package:pwpb1/app/modules/admin/pengajuan/pengajuan_view.dart';

import '../home/home_view.dart';

class PetugasGudangDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetugasGudangDashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              PetugasGudangHome(),
              PetugasGudangAsetRuang(),
              PetugasGudangPengajuan(),
              PetugasGudangDataBarang(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: const Color(0xffBA9D4B),
            unselectedItemColor: const Color(0xff31314F),
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              _bottomNavigationBarItem(FontAwesomeIcons.home, 'Beranda'),
              _bottomNavigationBarItem(FontAwesomeIcons.boxOpen, 'Aset'),
              _bottomNavigationBarItem(FontAwesomeIcons.list, 'Pengajuan'),
              _bottomNavigationBarItem(
                  FontAwesomeIcons.solidFolderOpen, 'Barang')
            ]),
      );
    });
  }

  _bottomNavigationBarItem(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
