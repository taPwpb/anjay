import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/global/splash/splash_binding.dart';
import 'package:pwpb1/app/modules/global/splash/splash_view.dart';

import 'core/theme/app_theme.dart';
import 'routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.SPLASH,
    theme: appThemeData,
    getPages: AppPages.pages,
  ));
}
