import 'package:animation/Components/custom_route.dart';
import 'package:animation/Components/custom_text.dart';
import 'package:animation/Components/round_container.dart';
import 'package:animation/Components/trapezoid_container.dart';
import 'package:animation/Screens/pick_carpet_area.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var remHeight = MediaQuery.of(context).size.height-180;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
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
                    title: CustomText.text(text:  "Full House Painting", size: 22),
                    subtitle: CustomText.text(text: "18% discount", size: 16)
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
                    child:TrapezoidContainer(
                      height: remHeight/2+30,
                      width: width*0.45,
                      color: Color.fromRGBO(87, 194, 67, 1),
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
                    child:TrapezoidContainer(
                      height: remHeight/2-30,
                      width: width*0.45,
                      color: Color.fromRGBO(253, 187, 59, 1),
                      children: <Widget>[
                        SizedBox(height: 20,),
                        CustomText.text18(
                          text:"Interior",
                        ),
                        SizedBox(height: 40,),
                        customContainer(
                          size: Size(80, 80),
                            color: Colors.white,
                          child: Container(),
                          round: true,
                        )
                      ],
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
                      child: TrapezoidContainer(
                        height: remHeight/2+10-20,
                        width: width*0.45,
                        color: Color.fromRGBO(239, 123, 175, 1),
                        children: <Widget>[
                          SizedBox(height: 40,),
                          customContainer(size: Size(80,80), child: Container(), color: Colors.white, round: true),
                          SizedBox(height: 40,),
                          CustomText.text18(
                            text:"Car Painting",
                          ),
                          SizedBox(height: 20,),
                        ],
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
                    child:TrapezoidContainer(
                      height: remHeight/2+50,
                      width: width*0.45,
                      color: Color.fromRGBO(132, 140, 255, 1),
                      children: <Widget>[
                        SizedBox(height: 50,),
                        customContainer(
                          size: Size(80,80),
                          color: Colors.white,
                          child: Container(),
                          round: true
                        ),
                        SizedBox(height: 40,),
                        CustomText.text18(
                          text:"Wood Polishing",
                        ),
                        SizedBox(height: 20,),
                      ],
                      points: [
                        Offset(0,0),
                        Offset(width*0.45,40),
                        Offset(width*0.45,(remHeight/2+40)),
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