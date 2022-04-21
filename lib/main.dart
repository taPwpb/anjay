import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/home/home_view.dart';
import 'package:pwpb1/app/modules/global/login/login_controller.dart';
import 'package:pwpb1/app/modules/global/splash/splash_binding.dart';
import 'package:pwpb1/app/modules/global/splash/splash_view.dart';
import 'package:pwpb1/core/utils/loading.dart';

import 'core/theme/app_theme.dart';
import 'routes/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authController =
      Get.put<LoginController>(LoginController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authController.streamAuthStatus,
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.connectionState == ConnectionState.active) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: snapshot.data != null
                  ? Routes.PETUGASGUDANGHOME
                  : Routes.SPLASH,
              theme: appThemeData,
              getPages: AppPages.pages,
            );
          }
          return const Loading();
        });
  }
}
