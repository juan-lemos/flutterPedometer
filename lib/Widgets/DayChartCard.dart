import 'package:flutter/material.dart';
import './Commons/CustomCard.dart';
import './Commons/BarChart.dart';

class DayChartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomCard(
      child: Container(
        child: BarChart(
          chartItems: [
            ChartItem(id: '1', amount: 400, labelName: 'my name'),
            ChartItem(id: '2', amount: 50)
          ],
          seriesId: 'items142',
        ),
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 0),
      ),
      height: 150,
    );
  }
}
