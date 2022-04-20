import 'dart:async';

import 'package:get/get.dart';
import 'package:pwpb1/routes/pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInitcek");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReadycek");
    super.onReady();
    Timer(Duration(seconds: 3), () => {Get.toNamed(Routes.LOGIN)});
  }
}
