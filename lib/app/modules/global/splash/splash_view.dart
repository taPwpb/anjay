import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/routes/pages.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 42, right: 42, top: 0, bottom: 50),
              child: Image.asset(
                'assets/images/splashscreen-1.png',
                width: 350,
                height: 350,
              ),
            ),
            const Text(
              "CAMAT",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1A2E35)),
            ),
            const Text(
              "Catat Manajemen Aset",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff1A2E35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
