import 'dart:math';

import 'package:flutter/material.dart';

class CirclePicker extends StatefulWidget{
  final double degrees;
  final Color bg;
  final double width;
  final double space;
  CirclePicker(this.bg,this.degrees,{this.width,this.space});
  _PickerState createState() =>_PickerState();
}

class _PickerState extends State<CirclePicker>{
  int current = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: 250,
        color: Colors.transparent,
        child: Stack(
          children: new List<Widget>.generate(7, (index){
            return index<6 ?Positioned(
              top: 200,
              left: size.width/2,
              child: Transform.rotate(
                origin: Offset(-100,-100),
                angle:widget.width*pi/180,
                child: ClipPath(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  clipper: Clipp(widget.degrees+index*(widget.width+widget.space), widget.width),
                  child: Container(
                      width: 250,
                      height: 250,
                      color: Colors.pink
                  ),
                ),
              ),
            ) :Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                      child:Text(
                        "${current+1} BHK",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      )
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
class ArcsPainter extends CustomPainter{
  final double degrees;
  final Color color;
  final double width;
  ArcsPainter(this.degrees,this.color,this.width);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width/2, size.height-50),
            radius: size.width/2
        ), degrees*pi/180, width*pi/180,true, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
class Clipp extends CustomClipper<Path>{
  final double start;
  final double width;
  Clipp(this.start,this.width);
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..addPolygon([
        Offset(0,0),
        Offset(size.width/2,0),
        Offset((size.width/2)*cos(width*pi/180),(size.width/2)*sin(width*pi/180))
      ], false);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}