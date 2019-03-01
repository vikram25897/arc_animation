import 'package:animation/Components/arc_clipper.dart';
import 'package:animation/Components/round_container.dart';
import 'package:flutter/material.dart';

class CirclePicker extends StatefulWidget {
  final double degrees;
  final Color bg;
  final double width;
  final double space;
  final Function onChange;
  CirclePicker(this.bg, this.degrees, {this.width, this.space, this.onChange});
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<CirclePicker> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: 250,
        color: Colors.transparent,
        child: Stack(
          children: new List<Widget>.generate(7, (index) {
            return index < 6
                ? ClipPath(
                    clipper: ArcClipper(
                        (widget.degrees + (index * (widget.width + widget.space))) , widget.width),
                    child: Container(
                      width: size.width,
                      height: 250,
                      color: index <= current ? Colors.blue : Colors.grey,
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
