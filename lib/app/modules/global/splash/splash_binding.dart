import 'package:get/get.dart';
import 'package:pwpb1/app/modules/global/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
