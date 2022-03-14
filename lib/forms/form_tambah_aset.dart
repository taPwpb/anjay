import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormTambahAset extends StatefulWidget {
  const FormTambahAset({Key? key}) : super(key: key);

  @override
  State<FormTambahAset> createState() => _FormTambahAsetState();
}

class _FormTambahAsetState extends State<FormTambahAset> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffBA9D4B)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.angleLeft)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Tambah Aset",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
        Form(),
      ],
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  List<String> tipe_kelas = ['Teori', 'Lab'];

  String _tipe_kelas = "Teori";

  List<String> kelas = ['Ruang Teori 1', 'Lab Meka'];

  String _kelas = "Ruang Teori 1";

  TextEditingController _tambah_barang_controller = new TextEditingController();
  int _row_tambah_barang = 0;

  void pilihTipeKelas(String value) {
    setState(() {
      _tipe_kelas = value;
    });
  }

  @override
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //icon

        Container(
          margin: const EdgeInsets.only(left: 12, top: 35, bottom: 10),
          child: const Text(
            "Icon",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            right: size.width * 0.4,
          ),
          child: TextFormField(
            decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
        ),

        Container(
          margin: const EdgeInsets.only(left: 12, top: 12, bottom: 10),
          child: const Text(
            "Kelas",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: DropdownButton(
            borderRadius: BorderRadius.circular(20),
            dropdownColor: Colors.white,
            underline: Container(),
            elevation: 8,
            value: _kelas,
            items: kelas.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              pilihTipeKelas(value.toString());
            },
          ),
        ),

        // Tipe Kelas
        Container(
          margin: const EdgeInsets.only(left: 12, top: 12, bottom: 10),
          child: const Text(
            "Tipe Kelas",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: DropdownButton(
            borderRadius: BorderRadius.circular(20),
            dropdownColor: Colors.white,
            underline: Container(),
            elevation: 8,
            value: _tipe_kelas,
            items: tipe_kelas.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              pilihTipeKelas(value.toString());
            },
          ),
        ),

        // barang
        Container(
          margin: const EdgeInsets.only(left: 12, top: 12),
          child: Row(
            children: [
              const Text(
                "Tambah ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Text(
                " Barang ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: _tambah_barang_controller,
                    autofocus: true,
                    style: TextStyle(fontSize: 20),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      // LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffBA9D4B),
                  ),
                  child: Text(
                    "Go",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onTap: () {
                  _row_tambah_barang =
                      int.parse(_tambah_barang_controller.text);
                  print(_row_tambah_barang);
                },
              ),
              // for (int i = 0; i < _row_tambah_barang; i++) {Text("kontol")}
            ],
          ),
        )
      ],
    );
  }
}
