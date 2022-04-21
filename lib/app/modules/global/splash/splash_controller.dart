import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/home/home_view.dart';
import 'package:pwpb1/app/modules/global/login/login_controller.dart';
import 'package:pwpb1/core/utils/loading.dart';
import 'package:pwpb1/routes/pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInitcek");
    super.onInit();
  }

  @override
  void onReady() {
    final loginController = Get.find<LoginController>();
    print("onReadycek");
    super.onReady();

    Timer(Duration(seconds: 3), () => {Get.toNamed(Routes.LOGIN)});
  }
}
