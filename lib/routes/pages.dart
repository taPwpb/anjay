import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/dashboard/dashboard_binding.dart';
import 'package:pwpb1/app/modules/admin/dashboard/dashboard_view.dart';
import 'package:pwpb1/app/modules/admin/home/home_view.dart';
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
    GetPage(name: Routes.PETUGASGUDANGHOME, page: () => PetugasGudangHome()),
    GetPage(
        name: Routes.PETUGASGUDANGDASHBOARD,
        page: () => PetugasGudangDashboard(),binding: PetugasGudangDashboardBinding() ),
  ];
}
