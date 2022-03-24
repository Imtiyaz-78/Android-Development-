

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("Images/one.png");
  AssetImage two = AssetImage("Images/two.png");
  AssetImage three = AssetImage("Images/three.png");
  AssetImage four = AssetImage("Images/four.png");
  AssetImage five = AssetImage("Images/five.png");
  AssetImage six = AssetImage("Images/six.png");

  AssetImage diceimage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }

    setState(() {
      diceimage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: diceimage,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 120.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                    padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    rollDice();
                  },
                  child: Text(
                    'Roll The Dice',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
