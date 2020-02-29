import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/hisoka.jpg'),
            ),
            Text(
              'hyskoa',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )
            ),
            Text(
              'STRONG WARRIOR',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              )
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(10.0),
              child: Row(children: <Widget>[
                Icon(
                  Icons.perm_phone_msg,
                  color: Colors.teal
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '+81 1234-5678',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0
                  )
                )
              ],)
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0
              ),
              child: Row(children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'example@email.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                  )
                )
              ],)
            ),
          ],),
        ),
      ),
    );
  }
}

