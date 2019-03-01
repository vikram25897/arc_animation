import 'package:animation/Components/custom_route.dart';
import 'package:animation/Screens/bhk.dart';
import 'package:flutter/material.dart';

class PickCarpet extends StatefulWidget{
  _PickCarpetState createState() => _PickCarpetState();
}

class _PickCarpetState extends State<PickCarpet>with SingleTickerProviderStateMixin{
  int clicked = -1;
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(duration:Duration(milliseconds: 1000),vsync: this);
    animation = new Tween<double>(begin: 0.15,end: 1.0).animate(controller);//CurvedAnimation(parent: controller, curve: Curves.easeInQuint));
    controller.forward();
    controller.addListener((){
      setState(() {

      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Stack(
//          overflow: Overflow.clip,
            children: [
//
            Positioned(
              top: -200.0,
             left: -200,
             child:

             Container(
               width:size.width+400,
               height: size.height+300,
               color: Colors.transparent,
               child: Center(
                 child: Container(
//                   margin: EdgeInsets.only(right: 1000.0),
                   height: size.height*animation.value*1.5,
                   width: size.height*animation.value*1.5,
                   decoration: BoxDecoration(
//                    color: Colors.red,
                     color: Color.lerp(Colors.grey, Theme.of(context).primaryColor, animation.value),
                     borderRadius: BorderRadius.all(Radius.circular(
                       size.height*animation.value*1.5+150
//                      size.height*animation.value < size.height ? size.height*animation.value : (1-animation.value)*size.width
                     )))
                 ),
               ),
             ),
             ),
              Positioned(
                top: (1-animation.value/2)*size.height*0.12,
                left: size.width*0.08,
                child: Text(
                  "Pick Carpet Area",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, animation.value),
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Positioned(
                top: size.height*0.225+(1-animation.value)*size.height,
                left: size.width*0.1,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      clicked = 1;
                    });
                  },
                  child: Container(
                    width: size.width*0.2,
                    height: size.width*0.2,
                    child: Center(
                      child: Text(
                        "<500 sqft",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: clicked==1?Colors.white:Colors.black
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: clicked==1?Colors.green:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular((size.width*0.2)/2))
                    ),
                  ),
                ),
              ),
            Positioned(
              top: size.height*0.16+(1-animation.value)*size.height,
              right: size.width*0.1,
              child: InkWell(
                onTap: (){
                  setState(() {
                    clicked = 2;
                  });
                },
                child: Container(
                  width: size.width*0.35,
                  height: size.width*0.35,
                  child: Center(
                    child: Text(
                      "500-\n1000 sq ft",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: clicked==2?Colors.white:Colors.black
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: clicked==2?Colors.green:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular((size.width*0.35)/2))
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height*0.39+(1-animation.value*animation.value)*size.height,
              right: size.width*0.26,
              child: InkWell(
                onTap: (){
                  setState(() {
                    clicked = 3;
                  });
                },
                child: Container(
                  width: size.width*0.45,
                  height: size.width*0.45,
                  child: Center(
                    child: Text(
                      ">3000 sq ft",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: clicked==3?Colors.white:Colors.black
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: clicked==3?Colors.green:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular((size.width*0.45)/2))
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height*0.1-(1-animation.value*animation.value*animation.value)*size.height,
              left: 40,
              child: InkWell(
                onTap: (){
                  setState(() {
                    clicked = 4;
                  });
                },
                child: Container(
                  width: size.width*0.35,
                  height: size.width*0.35,
                  child: Center(
                    child: Text(
                      "2000-\n3000 sq ft",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: clicked==4?Colors.white:Colors.black
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: clicked==4?Colors.green:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular((size.width*0.35)/2))
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height*0.18-(1-animation.value*animation.value)*size.height,
              right: 40,
              child: InkWell(
                onTap: (){
                  setState(() {
                    clicked = 5;
                  });
                },
                child: Container(
                  width: size.width*0.25,
                  height: size.width*0.25,
                  child: Center(
                    child: Text(
                      "1000-\n2000 sq ft",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: clicked==5?Colors.white:Colors.black
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: clicked==5?Colors.green:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular((size.width*0.25)/2))
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20-(1-animation.value*animation.value)*size.height,
              right: 20,
              child: InkWell(
                onTap: (){
                  Navigator.push(context,MyCustomRoute(
                    builder: (context)=>ChooseBhk()
                  ));
                },
                child: Container(
                  width: 60,
                  height: 40,
                  child: Center(
                    child: Icon(
                      Icons.chevron_right
                    )
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular((20))
                  ),
                ),
              ),
            ),
            ),
            Positioned(
              bottom: 20-(1-animation.value*animation.value)*size.height,
              left: 20,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 60,
                  height: 40,
                  child: Center(
                      child: Icon(
                          Icons.chevron_left
                      )
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular((20))
                    ),
                  ),
                ),
              ),
            )
          ]
          ),

          ),
      ),
      );
  }

}