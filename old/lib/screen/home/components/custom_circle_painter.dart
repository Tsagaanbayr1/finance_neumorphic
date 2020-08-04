import 'dart:math' as Math;
// This is the Painter class
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  // a fancy rainbow gradient
  final Gradient gradient = new RadialGradient(
    colors: <Color>[
      Colors.white.withOpacity(1.0),
      Colors.white.withOpacity(0.2),
      Colors.white.withOpacity(0.3),
      Colors.white.withOpacity(0.1),
      Colors.white.withOpacity(0.0),
    ],
    stops: [
      0.0,
      0.5,
      0.7,
      0.9,
      1.0,
    ],
  );
  Rect rect = new Rect.fromCircle(
    center: new Offset(165.0, 55.0),
    radius: 180.0,
  );
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..shader = gradient.createShader(rect);
    ;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2 - 10.0),
        height: size.height,
        width: size.width,
      ),
      0.0,
      Math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
