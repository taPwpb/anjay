import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/routes/pages.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catat Manajemen Aset',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Center(
              child: Container(
                width: size.width,
                height: size.height,
                color: const Color(0xff31314F),
                child: CustomPaint(
                  size: Size(size.width, size.height),
                  painter: MyPainter(),
                ),
              ),
            ),
            FormLogin(),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    var _jajargenjang_path = Path();
    _jajargenjang_path.moveTo(0, 0);
    _jajargenjang_path.lineTo(size.width, size.height * 0.25);
    _jajargenjang_path.lineTo(size.width, size.height * 0.40);
    _jajargenjang_path.lineTo(0, size.height * 0.15);
    _paint.color = Colors.white;
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(_jajargenjang_path, _paint);

    var _outer_triangle_path = Path();
    _outer_triangle_path.moveTo(size.width * 0.85, size.height * 0.08);
    _outer_triangle_path.lineTo(size.width * 0.85, size.height * 0.337);
    _outer_triangle_path.lineTo(size.width * 0.5, size.height * 0.247);
    _paint.color = Color(0xffBA9D4B);
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(_outer_triangle_path, _paint);

    var _inner_triangle_path = Path();
    _inner_triangle_path.moveTo(size.width * 0.833, size.height * 0.105);
    _inner_triangle_path.lineTo(size.width * 0.833, size.height * 0.32);
    _inner_triangle_path.lineTo(size.width * 0.54, size.height * 0.247);
    _paint.color = Color(0xff31314F);
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(_inner_triangle_path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Container(
              child: const Text(
                "Masuk",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.6,
            margin: const EdgeInsets.only(left: 30, top: 20),
            child: const TextField(
              style: TextStyle(color: Colors.white54),
              decoration: InputDecoration(
                hintText: "username",
                hintStyle: TextStyle(
                  color: Colors.white54,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.6,
            margin: const EdgeInsets.only(left: 30, top: 20),
            child: const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white54),
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.white54,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.off(Routes.SPLASH);
            },
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15)),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
