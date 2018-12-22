import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_pedometer/routes.dart';
import 'package:redux/redux.dart';
import 'package:flutter_pedometer/Models/app_state.dart';
import 'package:flutter_pedometer/Reducers/app_reducer.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  final String title = 'MeSuite';

  MainApp();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    var store = new Store<AppState>(appReducer,
        initialState: new AppState(), distinct: true, middleware: []);

    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        routes: getRoutes(context, store),
        initialRoute: '/login',
      ),
    );
  }
}

//TODO: OLD MAIN
// import 'package:flutter/material.dart';
// import 'package:flutter_pedometer/Constants/colors.dart' as colors;

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: new MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//         decoration: new BoxDecoration(color: colors.backgroundColor),
//         child: new SafeArea(
//             child: Column(children: <Widget>[
//           Container(
//               margin: EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 4),
//               alignment: Alignment.centerRight,
//               child: new Material(
//                 color: colors.transparent,
//                 shape: new CircleBorder(),
//                 child: new IconButton(
//                     alignment: Alignment.center,
//                     icon: new Icon(Icons.access_alarm),
//                     tooltip: 'list',
//                     onPressed: () => debugPrint('#debug print')),
//               )),
//           ListView(shrinkWrap: true, children: <Widget>[
//             Card(
//               margin: const EdgeInsets.only(left: 8, right: 8),
//               color: colors.mainColor,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[],
//               ),
//             )
//           ])
//         ])));
//   }
// }
