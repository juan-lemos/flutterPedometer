import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Screens/WeekReportSubPage.dart';

class DaysReportsPage extends StatelessWidget {
  DaysReportsPage();

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: SafeArea(
          child: Center(
              child: Column(
        children: <Widget>[
          Flexible(
            child: WeekReportSubPage(),
          ),
          BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business), title: Text('Business')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), title: Text('School')),
            ],
            fixedColor: Colors.deepPurple,
          ),
        ],
      ))),
      color: CustomColors.backgroundColor,
    );
  }
}
