import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BG Changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random Background"),
        ),
        body: HomePage(),
      ),
    );
  }
}

// HomePage Class
class HomePage extends StatefulWidget {
  @override
  _HomePageStateState createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange // or Color(0xff)
  ];

  var currenColor = Colors.white;

  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currenColor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currenColor,
      child: Center(
        child: ElevatedButton(
          child: Text(
            'Press Change',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            // or direct setRandomColor,
            setRandomColor();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              primary: Colors.teal,
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
