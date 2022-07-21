import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.blue;
    var path = Path();
    path.lineTo(0, size.height - size.height / 5);
    path.lineTo(size.width / 1.2, size.height);
    //Added this line
    path.relativeQuadraticBezierTo(15, 3, 30, -5);
    path.lineTo(size.width, size.height - size.height / 5);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}