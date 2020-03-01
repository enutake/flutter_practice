import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
//          print('I got clicked');
          int ballNumber = Random().nextInt(4);
          print(ballNumber);
        },
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
}
