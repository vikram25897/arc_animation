import 'package:flutter/material.dart';

class CustomText{
  static Widget text18({@required String text}){
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600
      ),
    );
  }
  static Widget text({@required String text,@required double size}){
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontWeight: FontWeight.w600
      ),
    );
  }
}