import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/aset_ruang/aset_ruang_controller.dart';

class PetugasGudangPengajuan extends GetView<PetugasGudangAsetRuangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("pengajuan"),
        ),
      ),
    );
  }
}
