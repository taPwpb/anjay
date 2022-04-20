import 'package:get/get.dart';
import 'package:pwpb1/app/modules/global/login/login_view.dart';
import 'package:pwpb1/app/modules/global/splash/splash_view.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => Splash()),
    GetPage(name: Routes.LOGIN, page: () => Login()),
  ];
}
