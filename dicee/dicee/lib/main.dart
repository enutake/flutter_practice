import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber  = 1;
  int rightDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png')
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png')
                ),
              ),
            ),
          ]
      ),
    );
  }
}


