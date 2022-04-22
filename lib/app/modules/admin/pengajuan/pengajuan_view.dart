import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/aset_ruang/aset_ruang_controller.dart';

class PetugasGudangPengajuan extends GetView<PetugasGudangAsetRuangController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Align(
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
                  Icon(FontAwesomeIcons.userCircle),
                  Text("Admin"),
                ],
              ),
            ),
          ),
          Center(
            child: Text("pengajuan"),
          )
        ],
      ),
    ));
  }
}
