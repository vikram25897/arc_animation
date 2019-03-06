import 'dart:math';

import 'package:flutter/rendering.dart';

class ArcClipper extends CustomClipper<Path> {
  final double start;
  final double width;
  final double radius;
  ArcClipper({this.start, this.width,this.radius});
  @override
  Path getClip(Size size) {
    print(radius);
    Path path = Path()
      ..arcTo(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height - 50),
            radius: radius),
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