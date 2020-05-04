import 'package:flutter/material.dart';
import 'dart:math' as math;

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
  final int dividedNum = 3;

  @override
  Widget build(BuildContext context) {
    final Size size               = MediaQuery.of(context).size;
    final double width            = size.width;
    final double height           = size.height;
    final double rectangleSize    = width / dividedNum;
    final int columnLength        = height ~/ rectangleSize;

    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: SafeArea(
        child: Column(
          children: List.generate(columnLength, (i) => row(rectangleSize: rectangleSize)),
        ),
      ),
    );
  }

  Container row({rectangleSize = 80,}) {
    final colorMaster = [Colors.blueAccent, Colors.lightGreenAccent, Colors.redAccent, Colors.green, Colors.yellowAccent, Colors.deepPurpleAccent, Colors.pinkAccent, Colors.orangeAccent, Colors.indigoAccent,];

    List colorList = [];
    for(var s = 0; s < dividedNum; s++) {
      var rand = new math.Random();
      var colorMasterLength = colorMaster.length;
      var randomInt = rand.nextInt(colorMasterLength - 1);
      colorList.add(colorMaster[randomInt]);
    }

    return Container(
      child: Row(
        children: List.generate(dividedNum, (i) => rectangle(size: rectangleSize, color: colorList[i])),
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
