import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.50),
        Offset(size.width * 0.96, size.height * 0.50),
        [const Color(0xffed9679), const Color(0xffe9ba6f)],
        [0.00, 1.00]);

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(size.width * 0.5833333, size.height * -0.0026500,
        size.width * 0.8333333, 0);
    path0.quadraticBezierTo(
        size.width * 0.9630000, size.height * 0.8714500, 0, size.height);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
