import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Panel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('Color Panel'),),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            row(size: width),
            row(size: width),
            row(size: width),
            row(size: width),
            row(size: width),
          ],
        ),
      ),
    );
  }

  Container row({size = 240}) {
    final num dividableNum = 3;
    final rectangleSize = size/dividableNum;
    return Container(
      child: Row(
        children: <Widget>[
          rectangle(size: rectangleSize, color: Colors.blue),
          rectangle(size: rectangleSize, color: Colors.lightBlue),
          rectangle(size: rectangleSize, color: Colors.blueAccent),
        ],
      ),
    );
  }

  Container rectangle({size = 80, color = Colors.green}) {
    return Container(
      width: size,
      height: size,
      color: color,
    );
  }
}
