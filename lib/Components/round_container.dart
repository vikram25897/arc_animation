import 'package:flutter/material.dart';

Widget customContainer({@required final bool round,@required final Size size,@required final color,@required final child,final double top,final double left,final double right,final double bottom}){
  if(top!=null || bottom!=null || left!=null || right!=null)
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Center(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: round ? BorderRadius.all(Radius.circular(size.width/2)) : BorderRadius.all(Radius.circular(0)),
          ),
          child: child,
        ),
      ),
    );
  else return Container(
    width: size.width,
    height: size.height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: round ? BorderRadius.all(Radius.circular(size.width/2)) : BorderRadius.all(Radius.circular(0)),
    ),
    child: child,
  );
}