import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;
import 'package:flutter_pedometer/Screens/WeekReportSubPage.dart';

class DaysReportsPage extends StatelessWidget {
  DaysReportsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        title: Text('Report'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Air it',
          // onPressed: _airDress,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(12.0),
          child: Text('hola',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: Fonts.secondaryFont,
                  fontWeight: FontWeight.w500)),
        ),
      ),
      body: WeekReportSubPage(),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );

    return new Container(
      child: SafeArea(
          child: Center(
              child: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: CustomColors.backgroundColor,
            title: Text('Report'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'Air it',
              // onPressed: _airDress,
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48.0),
              child: Text('hola',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: Fonts.secondaryFont,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          Flexible(
            child: WeekReportSubPage(),
          ),
          BottomNavigationBar(
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
          ),
        ],
      ))),
      color: CustomColors.backgroundColor,
    );
  }
}
