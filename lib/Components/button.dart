import 'package:flutter/material.dart';

Widget button({@required String text,@required Function onClick,
  @required Color color,Color splashColor,Color borderColor}){
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      border: Border.all(color: borderColor,width: 2)
    ),
    child: Material(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      type: MaterialType.transparency,
      //borderRadius: BorderRadius.circular(40),
      child: InkWell(
        onTap: onClick,
        splashColor: Colors.white,
        radius: 20,
        borderRadius: BorderRadius.circular(40),
        customBorder: Border.all(
          color: borderColor,
          width: 2
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}