import 'package:get/get.dart';
import '../app/modules/global/login/login_binding.dart';
import '../app/modules/global/login/login_view.dart';
import '../app/modules/global/splash/splash_binding.dart';
import '../app/modules/global/splash/splash_view.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH, page: () => Splash(), binding: SplashBinding()),
    GetPage(name: Routes.LOGIN, page: () => Login(), binding: LoginBinding()),
  ];
}
