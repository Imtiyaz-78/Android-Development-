import 'package:flutter/material.dart';
void main() {
  var app = MaterialApp(
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
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  textStyle:
                  MaterialStateProperty.all(TextStyle(fontSize: 30))),
              child: const Text('Login'),
              
              
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

  runApp(app);
}
