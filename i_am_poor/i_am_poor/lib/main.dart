import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('I am Poor!'),
        backgroundColor: Color(0x26C6DA),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/hisoka.jpg'),
        ),
      ),
    ),
  ));
}
