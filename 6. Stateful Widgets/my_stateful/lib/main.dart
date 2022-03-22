import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButtoon(),
  ));
}

class MyButtoon extends StatefulWidget {}

class MyButtonState extends state<NyButton> {
  int counter = 0;
  List<String> spanishNumber = [
    "uno",
    "dos",
    "tres",
    "cuato",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];

  String defaultText = "Spanish numbers";

  @override
  widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stateful app'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'defaultText',
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Call Numbers'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 30))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
