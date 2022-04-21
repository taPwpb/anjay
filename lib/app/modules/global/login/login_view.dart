import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwpb1/app/modules/global/login/login_controller.dart';
import 'package:pwpb1/routes/pages.dart';
import 'package:pwpb1/core/theme/text_theme.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final loginController = Get.find<LoginController>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: const Color(0xff31314F),
            child: IgnorePointer(
              child: CustomPaint(
                size: Size(size.width, size.height),
                painter: MyPainter(),
              ),
            ),
          ),
          // FormLogin(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  child: Container(
                    child: const Text(
                      "Masuk",
                      style: title_text_white,
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.6,
                  child: TextField(
                    controller: _emailController,
                    style: const TextStyle(color: Colors.white54),
                    decoration: const InputDecoration(
                      labelText: "email",
                      labelStyle: TextStyle(
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
                  child: TextField(
                    controller: _passwordController,
                    style: const TextStyle(color: Colors.white54),
                    decoration: const InputDecoration(
                      labelText: "password",
                      labelStyle: TextStyle(
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
                    loginController.login(
                        _emailController.text, _passwordController.text);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
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
          )
        ],
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
