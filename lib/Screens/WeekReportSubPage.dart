import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/DaysChartCard.dart';
import 'package:flutter_pedometer/Widgets/DaysResumeCard.dart';
import 'package:flutter_pedometer/Widgets/DayResumeCard.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Utils/CaloriesCalculator.dart'
    as CaloriesCalculator;
import 'package:flutter_pedometer/Constants/Gender.dart' as Gender;
import 'package:flutter_pedometer/Utils/ChartUtils.dart' as ChartUtils;

class WeekReportSubPage extends StatelessWidget {
  final int goalSteps = 6000;
  final double height = 1.7;
  final String gender = Gender.MALE;
  final int time = 3800;
  final DateTime age = new DateTime.utc(1996, 1, 1);
  final double weight = 70;
  final List<int> daysSteps = [1000, 400, 6000, 3000, 3200, 5000, 8000];
  final List<int> times = [143, 57, 857, 428, 47, 714, 1142];
  final List<String> messages = [
    'Monday\nOct 22',
    'Tuesday\nOct 23',
    'Wednesday\nOct 24',
    'Thursday\nOct 25',
    'Friday\nOct 26',
    'Saturday\nOct 27',
    'Sunday\nOct 28',
  ];
  WeekReportSubPage();

  @override
  Widget build(BuildContext context) {
    var allSteps = this.daysSteps.reduce((curr, next) => curr + next);
    List<Widget> widgetsList = <Widget>[
      DaysChartCard(
          chartItems: ChartUtils.daysListToChartItems(
              daysSteps: this.daysSteps, goalSteps: this.goalSteps)),
      Container(
        height: 10,
      ),
      DayResumeCard(
          distance: CaloriesCalculator.calculateStepToMeters(
                  allSteps, this.height, this.gender)
              .toInt(),
          time: this.time,
          energy: CaloriesCalculator.calculateEnergyExpenditure(
            this.height,
            this.age,
            this.weight,
            this.gender,
            this.time * 60,
            allSteps,
          ).toInt()),
      Container(
        height: 10,
      )
    ];

    for (int i = 0; i < daysSteps.length; i++) {
      widgetsList.add(DaysResumeCard(
          distance: CaloriesCalculator.calculateStepToMeters(
                  daysSteps[i], this.height, this.gender)
              .toInt(),
          energy: CaloriesCalculator.calculateEnergyExpenditure(
                  this.height,
                  this.age,
                  this.weight,
                  this.gender,
                  this.times[i] * 60,
                  daysSteps[i])
              .toInt(),
          goalSteps: this.goalSteps,
          message: this.messages[i],
          time: this.times[i],
          totalSteps: daysSteps[i]));
      widgetsList.add(Container(
        height: 10,
      ));
    }

    return new Container(
      child: Center(
          child: ListView(
        padding: const EdgeInsets.only(bottom: 20),
        children: widgetsList,
      )),
      color: CustomColors.backgroundColor,
    );
  }
}
