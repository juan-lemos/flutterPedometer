import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;
import 'package:flutter_pedometer/Widgets/Commons/CustomCard.dart';
import 'package:flutter_pedometer/Widgets/Commons/BarChart.dart';

class WeekMonthChartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomCard(
      child: Container(
        child: Column(children: <Widget>[
          Container(
            child: BarChart(
              chartItems: [
                ChartItem(id: '1', amount: 400, labelName: 'M'),
                ChartItem(id: '2', amount: 50, labelName: 'T')
              ],
              seriesId: 'items142',
              renderPrimaryAxis: true,
              labelOffsetFromAxisPx: 3,
            ),
            height: 115,
          ),
          Text(
            'Steps',
            style: TextStyle(
              color: CustomColors.white,
              fontSize: 13,
              fontFamily: Fonts.mainFont,
            ),
          )
        ]),
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 0),
      ),
      height: 150,
    );
  }
}
