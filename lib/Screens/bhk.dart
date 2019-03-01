import 'package:animation/Components/circle_picker.dart';
import 'package:animation/Components/custom_route.dart';
import 'package:animation/Screens/preferences.dart';
import 'package:flutter/material.dart';

class ChooseBhk extends StatefulWidget{
  _ChooseBHKState createState()=>_ChooseBHKState();
}
class _ChooseBHKState extends State<ChooseBhk> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(duration:Duration(milliseconds: 1000),vsync: this);
    animation = new Tween<double>(begin: 0,end: 1.0).animate(controller);//CurvedAnimation(parent: controller, curve: Curves.easeInQuint));
    controller.forward();
    controller.addListener((){
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
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
        color: Color.lerp(Colors.grey, Colors.white, animation.value),
    borderRadius: BorderRadius.all(Radius.circular(
    size.height*animation.value*1.5+150
//                      size.height*animation.value < size.height ? size.height*animation.value : (1-animation.value)*size.width
    )))
    ),
    ),
    ),
    ),
          Positioned(
            left: 0,
            right: 0,
            top: 20+(1-animation.value)*20,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 12),
                    child: Text(
                      "How Many BHK",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 12),
                    child: Text(
                      "What's Included In The Service?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 12),
                    child: Text(
                      "What's Included In The Service?What's Included In The Service? What's Included In The Service?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 12),
                    child: Text(
                      "What's Included In The Service?What's Included In The Service? What's Included In The Service?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 12),
                    child: Text(
                      "What's Included In The Service?What's Included In The Service? What's Included In The Service?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  CirclePicker(
                    Colors.white,
                    180+(1-animation.value)*90,
                    width: 25*animation.value,
                    space: 6*animation.value,
                    onChange: (index){
                      print(index);
                    },
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Amount",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                          ),
                        ),
                        Text(
                          "\$340",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -40 + 60*animation.value,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 16,
                      shadowColor: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular((20))),
                      child: Container(
                        width: 60,
                        height: 40,
                        child: Center(
                            child: Icon(
                                Icons.chevron_left
                            )
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MyCustomRoute(
                        builder: (context)=>PreferenceScreen()
                      ));
                    },
                    child: Material(
                      elevation: 16,
                      shadowColor: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular((20))),
                      color: Colors.white,
                      child: Container(
                        width: 60,
                        height: 40,
                        child: Center(
                            child: Icon(
                                Icons.chevron_right
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ]))));
  }

}