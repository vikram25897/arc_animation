import 'package:animation/Components/custom_route.dart';
import 'package:animation/Screens/confirm.dart';
import 'package:flutter/material.dart';
import 'package:material_switch/material_switch.dart';

class PreferenceScreen extends StatefulWidget {
  _PreferenceScreenState createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  List<String> switchOptions = ["  Yes", "  No"];
  String selectedSwitchOption = "  Yes";
  int chosen = 0;
  bool tick = false;
  bool switchValue = false;
  bool switchTileValue = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        duration: Duration(milliseconds: 700), vsync: this);
    animation = new Tween<double>(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(parent: controller, curve: Curves.bounceInOut));
    animation.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Positioned(
              top: size.height * (1 - animation.value) + 30,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Preference",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Date",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        width: size.width - 24,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: new List<Widget>.generate(10, (index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                        color: index == chosen
                                            ? Theme
                                            .of(context)
                                            .primaryColor
                                            : Color.fromRGBO(239, 243, 249, 1)),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? "TODAY"
                                            : "$index Mar\nDay",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: index == chosen
                                                ? Colors.white
                                                : Colors.grey,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                );
                              })),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: size.width - 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Tick If Fresh Painting",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Switch(
                              value: switchValue,
                              activeColor: Colors.blue,
                              activeTrackColor:
                              Color.fromRGBO(239, 243, 249, 1),
                              inactiveTrackColor:
                              Color.fromRGBO(239, 243, 249, 1),
                              onChanged: (boool) {
                                setState(() {
                                  switchValue = !switchValue;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: size.width - 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "I Would Supply Material",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 100,
                              child: MaterialSwitch(
                                padding: const EdgeInsets.only(
                                    left: 5.0, right: 5.0),
                                margin: const EdgeInsets.only(
                                    left: 5.0, right: 5.0),
                                selectedOption: selectedSwitchOption,
                                options: switchOptions,
                                selectedBackgroundColor:
                                Theme
                                    .of(context)
                                    .primaryColor,
                                selectedTextColor: Colors.white,
                                onSelect: (String selectedOption) {
                                  setState(() {
                                    selectedSwitchOption = selectedOption;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      Container(
                          width: size.width - 24,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromRGBO(239, 243, 249, 1),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    initialValue: "Bannerghatta Main Road",
                                    enabled: false,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      tick = !tick;
                                    });
                                  },
                                  child: Icon(
                                    Icons.check_circle_outline,
                                    color: tick ? Theme
                                        .of(context)
                                        .primaryColor : Colors.grey,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(height: 12,),
                      Text(
                        "Add New Address",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 100,),
                      Container(
                        width: size.width - 24,
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
                      ),
                    ]),
              ),
            ),
            Positioned(
                bottom: -40+animation.value*60,
                right: 20,
              child: InkWell(
                onTap: (){
                  Navigator.push(context,MyCustomRoute(
                    builder: (context)=>ConfirmScreen()
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
            )
          ],
        ));
  }
}
