import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/data_barang/data_barang_controller.dart';

class PetugasGudangDataBarang
    extends GetView<PetugasGudangDataBarangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("data barang"),
        ),
      ),
    );
  }
}
