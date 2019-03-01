import 'dart:math';

import 'package:flutter/rendering.dart';

class ArcClipper extends CustomClipper<Path> {
  final double start;
  final double width;
  ArcClipper(this.start, this.width);
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..arcTo(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height - 50),
            radius: size.width / 2),
        start*pi/180,
        width*pi/180,
        true,
      )
      ..lineTo(size.width / 2, size.height - 50)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}