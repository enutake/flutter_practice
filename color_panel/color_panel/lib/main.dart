import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final String title = 'Color Panel';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  final String title = 'Color Panel';

  @override
  Widget build(BuildContext context) {
    final Size size        = MediaQuery.of(context).size;
    final double width     = size.width;
    final double height    = size.height;
    final int dividableNum = 3;
    final double rectangleSize    = width / dividableNum;
    final int columnLength = height ~/ rectangleSize;

    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: SafeArea(
        child: Column(
          children: List.generate(columnLength, (i) => row(rectangleSize: rectangleSize)),
        ),
      ),
    );
  }

  Container row({rectangleSize = 80}) {
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
