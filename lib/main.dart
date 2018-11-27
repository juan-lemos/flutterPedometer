import 'package:flutter/material.dart';
import 'package:flutter_pedometer/constans/colors.dart' as colors;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(color: colors.backgroundColor),
        child: new SafeArea(
            child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 4),
              alignment: Alignment.centerRight,
              child: new Material(
                color: colors.transparent,
                shape: new CircleBorder(),
                child: new IconButton(
                    alignment: Alignment.center,
                    icon: new Icon(Icons.access_alarm),
                    tooltip: 'list',
                    onPressed: () => debugPrint('#debug print')),
              )),
          ListView(shrinkWrap: true, children: <Widget>[
            Card(
              margin: const EdgeInsets.only(left: 8, right: 8),
              color: colors.mainColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[],
              ),
            )
          ])
        ])));
  }
}
