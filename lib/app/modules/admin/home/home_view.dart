import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/admin/home/home_controller.dart';
import 'package:pwpb1/app/modules/global/login/login_controller.dart';
import 'package:pwpb1/core/theme/text_theme.dart';
import 'dart:async';

class PetugasGudangHome extends StatelessWidget {
  final controller = Get.put(PetugasGudangHomeController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loginController = Get.find<LoginController>();

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          InkWell(
            onTap: () => loginController.logout(),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: size.width * 0.3,
                margin: const EdgeInsets.only(top: 24, right: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Logout",
                      style: title_text,
                    ),
                    Icon(FontAwesomeIcons.signOutAlt)
                  ],
                ),
              ),
            ),
          ),
          CarouselSlider(
            items: generateSlider(),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 27),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff31314f),
            ),
            child: ListView(shrinkWrap: true, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: const Icon(
                      FontAwesomeIcons.bell,
                      color: Color(0xffBA9D4B),
                      size: 27,
                    ),
                  ),
                  const Text(
                    "Daftar Pengajuan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.notifs.length,
                  itemBuilder: (context, position) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffBA9D4B),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(5, 5, 20, 5),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Text(
                              controller.notifs[position],
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ]),
          ),
          // generateList()
        ]),
      )),
    );
  }

  List<Widget> generateSlider() {
    List<Widget> sliders = controller.words.map((item) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 37),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xff31314f),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              item,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Barcode-amico.png')),
              ),
            ),
          ],
        ),
      );
    }).toList();
    return sliders;
  }
}
