import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/home/home_controller.dart';
import 'package:pwpb1/app/modules/global/login/login_controller.dart';

class PetugasGudangHome extends GetView<PetugasGudangHomeController> {
  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();
    return SafeArea(
        child: Center(
      child: Text("home"),
    ));
  }
}
