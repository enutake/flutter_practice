import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => ListState();
}

class ListState extends State<MyHomePage> {
  var listItem = ["one", "two", "three"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("メモ帳"),),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("ホーム"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ユーザー設定"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
