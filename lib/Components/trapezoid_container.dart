import 'package:animation/Components/trapezoid.dart';
import 'package:flutter/material.dart';

class TrapezoidContainer extends StatelessWidget{
  final double height;
  final double width;
  final List<Widget> children;
  final Color color;
  final List<Offset> points;
  TrapezoidContainer({this.height,this.width,this.color,this.children,this.points});
  @override
  Widget build(BuildContext context) {
    return Trapezoid(
      child: Container(
        height: height,
        width: width,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
      points: points,
    );
  }

}