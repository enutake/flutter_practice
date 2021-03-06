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
    var memoList = [
      {
        "title": "タイトル1",
        "time": "2020/05/05 18:32"
      },
      {
        "title": "タイトル2",
        "time": "2020/04/04 18:32"
      },
      {
        "title": "タイトル3",
        "time": "2020/04/03 18:32"
      },
      {
        "title": "タイトル4",
        "time": "2020/04/03 18:32"
      },
      {
        "title": "タイトル5",
        "time": "2020/04/03 18:32"
      },
      {
        "title": "タイトル6",
        "time": "2020/04/03 18:32"
      },
      {
        "title": "タイトル7",
        "time": "2020/04/03 18:32"
      },
      {
        "title": "タイトル8",
        "time": "2020/04/03 18:32"
      },
      {
        "title": "タイトル9",
        "time": "2020/04/03 18:32"
      },
      {
        "title": "タイトル10",
        "time": "2020/04/03 18:32"
      },
    ];
    return Column(
      children: List.generate(memoList.length, (i) => memo(title: memoList[i]["title"], time: memoList[i]["time"]))
    );
  }

  Widget memo({String title = "タイトルタイトルタイトル", String time = "2020/05/04 18:05"}) {
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
            memoTitle(title: title),
            modifiedAt(time: time)
          ],
        ),
      ),
    );
  }

  Widget memoTitle({String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget modifiedAt({String time}) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text.rich(
            TextSpan(
              text: time,
            ),
          ),
        ],
      ),
    );
  }

}
