import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/DaysChartCard.dart';
import 'package:flutter_pedometer/Widgets/DaysResumeCard.dart';
import 'package:flutter_pedometer/Widgets/DayResumeCard.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Utils/CaloriesCalculator.dart'
    as CaloriesCalculator;
import 'package:flutter_pedometer/Constants/Gender.dart' as Gender;
import 'package:flutter_pedometer/Utils/ChartUtils.dart' as ChartUtils;

class WeekReportPage extends StatelessWidget {
  final String title;
  final int steps = 1204;
  final int goalSteps = 6000;
  final double height = 1.7;
  final String gender = Gender.MALE;
  final int time = 10;
  final DateTime age = new DateTime.utc(1996, 1, 1);
  final double weight = 70;
  final List<int> daysProgress = [1000, 400, 6000, 3000, 3200, 5000, 8000];
  WeekReportPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: SafeArea(
          child: Center(
              child: ListView(
        padding: const EdgeInsets.only(bottom: 20),
        children: <Widget>[
          DaysChartCard(
            chartItems:
                ChartUtils.daysListToChartItems(daysSteps: daysProgress),
          ),
          Container(
            height: 10,
          ),
          DayResumeCard(
              distance: CaloriesCalculator.calculateStepToMeters(
                      this.steps, this.height, this.gender)
                  .toInt(),
              time: this.time,
              energy: CaloriesCalculator.calculateEnergyExpenditure(
                this.height,
                this.age,
                this.weight,
                this.gender,
                this.time * 60,
                this.steps,
              ).toInt()),
          Container(
            height: 10,
          ),
          DaysResumeCard()
        ],
      ))),
      color: CustomColors.backgroundColor,
    );
  }
}
