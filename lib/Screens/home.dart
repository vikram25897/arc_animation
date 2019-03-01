import 'package:animation/Components/custom_route.dart';
import 'package:animation/Components/trapezoid.dart';
import 'package:animation/Screens/pick_carpet_area.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var remHeight = MediaQuery.of(context).size.height-240;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20,),
            Container(
              height: 38,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "My Painter",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(238, 141, 141, 1),
                      size: 32,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 7,),
            InkWell(
              onTap: (){
                Navigator.push(context,MyCustomRoute(
                    builder: (context) => PickCarpet()
                ));
              },
              child: Container(
                height: 120,
                margin: EdgeInsets.only(top: 10,bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: ListTile(
                    leading: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Full House Painting",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22
                      ),
                    ),
                    subtitle: Text(
                      "18% discount",
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                )
                ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left:0,
                    top: 0,
                    width: width*0.45,
                    child:Trapezoid(
                      child: Container(
                        height: remHeight/2+10+20,
                        width: width*0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 20,),
                            Text(
                              "Exterior Alone",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              ),
                            )
                          ],
                        ),
                        color: Color.fromRGBO(87, 194, 67, 1),
                      ),
                      points: [
                        Offset(0,0),
                        Offset(width*0.45,0),
                        Offset(width*0.45,(remHeight/2)-40+10+20),
                        Offset(0,(remHeight/2)+10+20)
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    width: width*.45,
                    child:Trapezoid(
                      child: Container(
                        height: remHeight/2-30,
                        width: width*0.45,
                        color: Color.fromRGBO(253, 187, 59, 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 20,),
                            Text(
                              "Interior Alone",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              ),
                            )
                          ],
                        ),
                      ),
                      points: [
                        Offset(0,0),
                        Offset(width*0.45,0),
                        Offset(width*0.45,(remHeight/2-30)),
                        Offset(0,(remHeight/2-30)-40)
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    width: width*.45,
                    child:Trapezoid(
                      child: Container(
                        height: remHeight/2+10-20,
                        width: width*0.45,
                        color: Color.fromRGBO(239, 123, 175, 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Text(
                              "Car Painting",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                      points: [
                        Offset(0,40),
                        Offset(width*0.45,0),
                        Offset(width*0.45,(remHeight/2)-20),
                        Offset(0,(remHeight/2)-20)
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    width: width*.45,
                    child:Trapezoid(
                      child: Container(
                        height: remHeight/2+10+30+10,
                        width: width*0.45,
                        color: Color.fromRGBO(132, 140, 255, 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Text(
                              "Wood Polishing",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                      points: [
                        Offset(0,0),
                        Offset(width*0.45,40),
                        Offset(width*0.45,(remHeight/2+10+30)),
                        Offset(0,(remHeight/2+30+10))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}