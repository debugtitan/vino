import 'dart:math';
import 'package:flutter/material.dart';

class PolygonClipper extends CustomClipper<Path> {
  final int sides;
  PolygonClipper({this.sides = 4}); // Default: square

  @override
  Path getClip(Size size) {
    final path = Path();
    final cx = size.width / 2;
    final cy = size.height / 2;
    final radius = min(size.width, size.height) / 2;

    for (int i = 0; i < sides; i++) {
      final angle = 2 * pi * i / sides - pi / 2; // start at top
      final x = cx + radius * cos(angle);
      final y = cy + radius * sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
