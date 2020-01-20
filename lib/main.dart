import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Digital Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateTime;
  Duration updateDuration = const Duration(seconds: 1);
  Timer _timer;

  @override
  void initState() {
    super.initState();
    dateTime = new DateTime.now();
    this._timer = new Timer.periodic(updateDuration, setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = new DateTime.now();
    });
  }

  var myDay = DateFormat('EEEE');
  var myMonth = DateFormat('MMM');
  var myDate = DateFormat('d');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
//                 color: Colors.transparent.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 13.0,
                  ),
                ],
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.grey, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
//                               color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
//                           height: 100,
//                           width: 100,
                        child: Center(
                          child: Text(
                            dateTime.hour.toString(),
                            style: TextStyle(
                              fontSize: 44,
                              color: Colors.white,
                              fontFamily: "Segment7Standard",
                              shadows: [
                                Shadow(
                                  blurRadius: 8.0,
                                  color: Colors.black,
                                  offset: Offset(3.0, 3.0),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      child: Text(
                        ":",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          shadows: [
                            Shadow(
                              blurRadius: 8.0,
                              color: Colors.black,
                              offset: Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
//                               color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),

                        child: Center(
                          child: Text(
                            dateTime.minute.toString(),
                            style: TextStyle(
                              fontSize: 44,
//                   fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Segment7Standard",
                              shadows: [
                                Shadow(
                                  blurRadius: 8.0,
                                  color: Colors.black,
                                  offset: Offset(3.0, 3.0),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      child: Text(
                        ":",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          shadows: [
                            Shadow(
                              blurRadius: 8.0,
                              color: Colors.black,
                              offset: Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
//                               color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
//                           height: 100,
//                           width: 100,
                        child: Center(
                          child: Text(
                            dateTime.second.toString(),
                            style: TextStyle(
                              fontSize: 44,
//                   fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Segment7Standard",
                              shadows: [
                                Shadow(
                                  blurRadius: 8.0,
                                  color: Colors.black,
                                  offset: Offset(3.0, 3.0),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),

                Container(
                  height: 10,
                ),

//                   Text("---------------",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Day",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "Digital",
                            shadows: [
                              Shadow(
                                blurRadius: 8.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    bottomLeft: Radius.circular(40))),
                            child: Center(
                              child: Text(
                                myDay.format(dateTime),
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: "Digital",
                                  shadows: [
                                    Shadow(
                                      blurRadius: 8.0,
                                      color: Colors.black,
                                      offset: Offset(3.0, 3.0),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      width: 15,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Month",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Digital",
                            fontSize: 15,
                            shadows: [
                              Shadow(
                                blurRadius: 8.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                            child: Center(
                              child: Text(
                                myMonth.format(dateTime),
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: "Digital",
                                  shadows: [
                                    Shadow(
                                      blurRadius: 8.0,
                                      color: Colors.black,
                                      offset: Offset(3.0, 3.0),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      width: 15,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 10,
                        ),
                        Text(
                          "Date",
                          style: TextStyle(
                            fontFamily: "Digital",
                            color: Colors.white,
                            fontSize: 15,
                            shadows: [
                              Shadow(
                                blurRadius: 8.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
//                               color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
//                           height: 100,
//                           width: 100,
                            child: Center(
                              child: Text(
                                myDate.format(dateTime),
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Digital",
//                   fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 8.0,
                                      color: Colors.black,
                                      offset: Offset(3.0, 3.0),
                                    ),
                                  ],
//                                   fontFamily: "Segment7Standard",
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ],
            ))),
//             Container(
//               child: CustomPaint(
//                   size: Size(200, 200),
//                   painter: DrawTriangle()
//               ),
//             ),
      ],
    )));
  }
}

class DrawTriangle extends CustomPainter {
  Paint _paint;

  DrawTriangle() {
    _paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
//    path.moveTo(size.width/2, 0);
//    path.lineTo(0, size.height);
//    path.lineTo(size.height, size.width);
//    path.close();
//    canvas.drawPath(path, _paint);

    path.lineTo(size.height, size.width / 2);
    path.lineTo(size.height, 0);
    path.moveTo(0, size.height / 2);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
