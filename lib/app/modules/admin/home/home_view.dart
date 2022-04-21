import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/global/login/login_controller.dart';

class PetugasGudangHome extends StatelessWidget {
  const PetugasGudangHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("yooo"),
        actions: [
          IconButton(
              onPressed: () {
                loginController.logout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
