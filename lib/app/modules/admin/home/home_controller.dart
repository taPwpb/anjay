import 'package:get/get.dart';

class PetugasGudangHomeController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
