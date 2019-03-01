import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Trapezoid extends StatelessWidget {
  final List<Offset> points;
  final child;
  Trapezoid({this.points,this.child});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: child,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      clipper: TrapClipper(points:points),
    );
  }
}
class TrapClipper extends CustomClipper<Path>{
  final List<Offset> points;
  TrapClipper({this.points});
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.addPolygon(points, true);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}