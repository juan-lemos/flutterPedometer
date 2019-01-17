import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/Commons/CustomCard.dart';
import 'package:flutter_pedometer/Widgets/Commons/BarChart.dart';
import 'package:flutter_pedometer/Models/ChartItem.dart';

class DayChartCard extends StatelessWidget {
  final List<ChartItem> stepsByHour;

  DayChartCard._(this.stepsByHour);

  factory DayChartCard({@required List<int> stepsByHour}) {
    int i = 0;
    List<ChartItem> valuesWithIds = [];
    stepsByHour.forEach((value) {
      String label = (i + 2) % 12 == 0 ? '${i + 2}' : '';
      label = i == 0 ? '0' : label;
      ChartItem charItem =
          new ChartItem(id: '$i', amount: value, labelName: label);
      valuesWithIds.add(charItem);
      i += 2;
    });
    return new DayChartCard._(valuesWithIds);
  }

  @override
  Widget build(BuildContext context) {
    return new CustomCard(
      child: Container(
        child: BarChart(
          chartItems: this.stepsByHour,
          seriesId: 'dayPerformance',
        ),
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 0),
      ),
      height: 150,
    );
  }
}
