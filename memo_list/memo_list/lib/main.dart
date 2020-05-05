import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("メモ帳"),),
      body: ListView(
        children: <Widget>[
          memoList(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo[900],
              ),
            ),
            ListTile(
              title: Text("ホーム"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("tap!");
              },
            ),
            ListTile(
              title: Text("ユーザー設定"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("tap!");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget memoList() {
    return Column(
      children: <Widget>[
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
        memo(),
      ],
    );
  }

  Widget memo() {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
            width: 1,
          ),
        ),
        child: Column(
          children: <Widget>[
            title(),
            modifiedAt()
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text.rich(
          TextSpan(
            text: "タイトルタイトルタイトル",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget modifiedAt() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text.rich(
            TextSpan(
              text: "2020/05/04 18:05",
            ),
          ),
        ],
      ),
    );
  }

}
