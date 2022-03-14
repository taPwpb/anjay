import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pwpb1/forms/form_tambah_aset.dart';

class TambahAsetPage extends StatelessWidget {
  const TambahAsetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 21),
                child: const Text(
                  "Tambah Aset Ruangan",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
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
                    Icon(FontAwesomeIcons.userCircle),
                    Text("Admin"),
                  ],
                ),
              ),
            ],
          ),
          Wrapper()
        ],
      ),
    );
  }
}

Widget Wrapper() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
    decoration: BoxDecoration(
      color: Color(0xff31314F),
      borderRadius: BorderRadius.circular(15),
    ),
    child: FormTambahAset(),
  );
}
