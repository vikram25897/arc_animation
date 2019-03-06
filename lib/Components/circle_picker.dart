import 'dart:math';

import 'package:animation/Components/arc_clipper.dart';
import 'package:animation/Components/round_container.dart';
import 'package:flutter/material.dart';

class CirclePicker extends StatefulWidget {
  final double startAngle;
  final double sweepAngle;
  final double dividerAngle;
  final Function onChange;
  final double height;
  final double width;
  final int count;
  final Color selectedColor;
  final Color unSelectedColor;
  const CirclePicker({@required this.count,this.startAngle, this.sweepAngle, this.dividerAngle, this.onChange, this.height, this.width, this.selectedColor, this.unSelectedColor});

  _PickerState createState() => _PickerState();
}

class _PickerState extends State<CirclePicker> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    print("${widget.width} ${widget.height}");
    return Container(
        width: widget.width,
        height: widget.height,
        color: Colors.transparent,
        child: Stack(
          children: new List<Widget>.generate(7, (index) {
            return index < widget.count
                ? ClipPath(
                    clipper: ArcClipper(
                        start:(widget.startAngle + (index * (widget.sweepAngle + widget.dividerAngle))) , width:widget.sweepAngle,radius: min(widget.height-50,widget.width/2)),
                    child: Container(
                      width: widget.width,
                      height: widget.height,
                      color: index <= current ? (widget.selectedColor ?? Colors.blue) : (widget.unSelectedColor ?? Colors.grey),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            current = index;
                            widget.onChange(index);
                          });
                        },
                      ),
                    ),
                  )
                : customContainer(
                    color: Colors.black,
                    round: true,
                    size: Size(100, 100),
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                        child: Text(
                      "${current + 1} BHK",
                      style: TextStyle(color: Colors.white),
                    )),
                  );
          }),
        ));
  }
}
