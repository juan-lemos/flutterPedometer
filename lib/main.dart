import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_pedometer/routes.dart';
import 'package:redux/redux.dart';
import 'package:flutter_pedometer/Models/TODOapp_state.dart';
import 'package:flutter_pedometer/Reducers/TODOapp_reducer.dart';
import 'package:flutter/services.dart';
import 'package:pedometer/pedometer.dart';
import 'package:sqflite/sqflite.dart';

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
