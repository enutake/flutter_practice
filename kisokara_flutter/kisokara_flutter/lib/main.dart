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
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          var messageFromFirst = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return SecondPage(messageFromFirst);
            },
          );
        }
        return null;
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            var message = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SecondPage('messageFromFirst');
                },
                fullscreenDialog: true,
              ),
            );
            print(message);
          },
          child: Text('Next Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String messageFromFirst;
  SecondPage(this.messageFromFirst);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, "SecondPageから戻った");
          },
          child: Text('Go back'),
        ),
      )
    );
  }
}


