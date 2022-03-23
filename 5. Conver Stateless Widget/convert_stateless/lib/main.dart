import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        accentColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center, // Centre ho jata hai
            children: [
              Text('I am text line one'),
              Text('I am text line one'),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                    textStyle:
                    MaterialStateProperty.all(TextStyle(fontSize: 30))),
                child: const Text('Signup'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add_a_photo,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
