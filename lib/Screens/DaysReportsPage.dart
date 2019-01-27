import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;
import 'package:flutter_pedometer/Screens/WeekReportSubPage.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class DaysReportsPage extends StatelessWidget {
  DaysReportsPage();

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        title: Text('Report',
            style: TextStyle(
                fontSize: 20,
                fontFamily: Fonts.secondaryFont,
                fontWeight: FontWeight.w600,
                color: CustomColors.strongCompleteColor)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Air it',
          // onPressed: _airDress,
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  tooltip: 'Air it',
                  // onPressed: _airDress,
                ),
                Text(
                  'Oct 22-28\n2018',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: Fonts.mainFont,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  tooltip: 'Air it',
                  // onPressed: _airDress,
                ),
              ],
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
            )),
      ),
      body: WeekReportSubPage(),
      bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: CustomColors.backgroundColor,
          ), // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: new Container(
                    height: 14,
                  ),
                  title: Text('Week',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: Fonts.secondaryFont,
                          fontWeight: FontWeight.w500))),
              BottomNavigationBarItem(
                  icon: new Container(
                    height: 14,
                  ),
                  title: Text('Month',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: Fonts.secondaryFont,
                          fontWeight: FontWeight.w500))),
            ],
            fixedColor: CustomColors.strongCompleteColor,
            iconSize: 0.0,
          )),
    );
  }
}
