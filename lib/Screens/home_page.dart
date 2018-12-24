import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/DayChartCard.dart';
import 'package:flutter_pedometer/Widgets/DayStepsCard.dart';
import 'package:flutter_pedometer/Widgets/DayResumeCard.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: SafeArea(
          child: Center(
              child: Column(
        children: <Widget>[
          DayStepsCard(),
          Container(
            height: 10,
          ),
          DayResumeCard(),
          Container(
            height: 10,
          ),
          DayChartCard(),
        ],
      ))),
      color: CustomColors.backgroundColor,
    );
  }
}
