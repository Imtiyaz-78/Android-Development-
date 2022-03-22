import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
    ),
  );

  runApp(app);
}
