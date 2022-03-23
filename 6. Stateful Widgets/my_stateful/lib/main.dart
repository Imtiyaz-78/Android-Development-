import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumbers = [
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

  void displaySNumbers() {
    setState(() {
      defaultText = spanishNumbers[counter];
      if (counter < 9) {
        counter++; // counter = counter + 1
      } else {
        counter = 0;
      }
    });
  }

  @override // This is Keyword
  Widget build(BuildContext context) {
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
              Text('defaultText', style: TextStyle(fontSize: 30.0)),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: displaySNumbers,
                child: Text(
                  'Call Numbers',
                  style: TextStyle(color: Colors.white),
                ),
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
