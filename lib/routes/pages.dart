import 'package:get/get.dart';
import 'package:pwpb1/app/modules/global/splash/page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
  ];
}
