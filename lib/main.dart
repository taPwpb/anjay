import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pwpb1/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nama Startup",
      home: Scaffold(
        body: Container(
          child: SplashScreen(),
        ),
      ),
    );
  }
}
