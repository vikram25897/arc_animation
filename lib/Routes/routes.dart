import 'package:animation/Components/custom_route.dart';
import 'package:animation/Screens/bhk.dart';
import 'package:animation/Screens/confirm.dart';
import 'package:animation/Screens/home.dart';
import 'package:animation/Screens/pick_carpet_area.dart';
import 'package:animation/Screens/preferences.dart';
import 'package:flutter/material.dart';
class Routes{
  ThemeData themeData = ThemeData(
    primaryColor: Color.fromRGBO(57, 147, 255, 1),
    primaryColorLight: Color.fromRGBO(40, 137, 253, 1),
    primaryTextTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      headline: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      )
    )
  );
  Routes(){
    runApp(
      new MaterialApp(
        theme: themeData,
        home: Home(),
//        routes: <String,WidgetBuilder>{
//          "/carpet" :(context) =>PickCarpet(),
//          "/bhk" : (context) => ChooseBhk(),
//          "/preference": (context) => PreferenceScreen(),
//          "/confirm": (context) => ConfirmScreen(),
//        },
      )
    );
  }
}