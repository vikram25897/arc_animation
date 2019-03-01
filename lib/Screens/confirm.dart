import 'package:animation/Components/button.dart';
import 'package:flutter/material.dart';

class ConfirmScreen extends StatefulWidget {
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  List<String> texts = ["Confirmed", "Assigned", "On the way", "in progress"];
  double finalTop = 40;
  int chosen = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        new AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = new Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    animation.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: -size.width / 2,
            right: -size.width / 2,
            bottom: -size.height / 2,
            top: -size.width,
            child: ClipPath(
              clipper: CustomClip(2 * animation.value * size.height),
              child: Container(
                width: 2 * size.width,
                height: 2 * size.width,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Container(
                    height: size.height+100,
                    width: size.width,
                    padding: EdgeInsets.all(20.0),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 80 + (1 - animation.value) * 80,
                        ),
                        Text(
                          "Booking Confirmed",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 20 + (1 - animation.value) * 40,
                        ),
                        Expanded(
                          child: Container(
                            width: size.height - 40,
                            child: Stack(children: [
                              Container(
                                width: size.width - 40,
                                height: 40,
                                child: CustomPaint(
                                  painter: ArcPaint(),
                                ),
                              ),
                              Container(
                                width: size.width - 40,
                                height: 70,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: List.generate(4, (index) {
                                    return Column(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              print(index);
                                              chosen = index;
                                            });
                                          },
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: index <= chosen
                                                ? Icon(
                                                    Icons.check,
                                                    size: 30,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  )
                                                : SizedBox(
                                                    height: 0,
                                                    width: 0,
                                                  ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          texts[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0),
                                        )
                                      ],
                                    );
                                  }),
                                ),
                              ),
                              Positioned(
                                top: 120+(1-animation.value)*40,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Container(
                                    height: size.width / 2,
                                    width: size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(size.width / 4))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "House",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  165, 169, 173, 1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "3000 sq.ft., 3 BHK\nfresh paint ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 120 + size.width / 2+(1-animation.value)*30,
                                left: 20,
                                child: Center(
                                  child: Container(
                                    height: size.width / 3,
                                    width: size.width / 3,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(size.width / 6))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Date",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  165, 169, 173, 1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Today",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 120 + size.width / 2+(1-animation.value)*30,
                                right: 15,
                                child: Center(
                                  child: Container(
                                    height: size.width * 0.4,
                                    width: size.width * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(size.width * 0.2))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Amount",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  165, 169, 173, 1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$340",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 26,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -(1 - animation.value) * 100 + 70,
                                left: 10,
                                right: 10,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    button(
                                        color: Colors.transparent,
                                        onClick: () {},
                                        borderColor: Colors.transparent,
                                        text: "PAY ONLINE"),
                                    button(
                                        color: Colors.transparent,
                                        onClick: () {},
                                        borderColor: Colors.white,
                                        text: "PAY AFTER SERVICE"),
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ),
                      ],
                      // ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: size.width/2-200,
            top: size.height/2-300,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(75)),
                color: Color.fromRGBO(255, 255, 255, 0.2*animation.value),
              ),
            ),
          ),
          Positioned(
            left: size.width/2-50,
            top: size.height/2-300,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color.fromRGBO(255, 255, 255, 0.2*animation.value),
              ),
            ),
          ),
          Positioned(
            right: size.width/2-250,
            top: size.height/2-300,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Color.fromRGBO(255, 255, 255, 0.2*animation.value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  final double radius;

  CustomClip(this.radius);

  @override
  Path getClip(Size size) {
    Path path = Path()
      ..addOval(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: radius));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class ArcPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    Path path = Path()
      ..moveTo(40, 35)
      ..conicTo(100, -20, 140, 15, 1);
    Path path2 = Path()
      ..moveTo(140, 15)
      ..conicTo(200, 70, 240, 15, 1);
    Path path3 = Path()
      ..moveTo(240, 26)
      ..conicTo(300, -20, 340, 15, 1);
    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint);
    canvas.drawPath(path3, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
