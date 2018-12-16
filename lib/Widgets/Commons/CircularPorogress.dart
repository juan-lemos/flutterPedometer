import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constans/Colors.dart' as CustomColors;
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class CircularPorogress extends StatelessWidget {
  final Widget child;
  //reference 300 circleSize, 200 orange circle, 250 container height
  final double height;

  CircularPorogress({this.child, this.height});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> _chartKey =
        new GlobalKey<AnimatedCircularChartState>();
    final size = Size(this.height * 1.2, this.height * 1.2);

    return Container(
      child: new Stack(
        children: <Widget>[
          new AnimatedCircularChart(
            key: _chartKey,
            size: size,
            initialChartData: <CircularStackEntry>[
              new CircularStackEntry(
                <CircularSegmentEntry>[
                  new CircularSegmentEntry(
                    25.00,
                    CustomColors.completeColor,
                    rankKey: 'completed',
                  ),
                  new CircularSegmentEntry(
                    100,
                    CustomColors.incompleteColor,
                    rankKey: 'remaining',
                  ),
                ],
                rankKey: 'progress',
              ),
            ],
            chartType: CircularChartType.Pie,
            percentageValues: true,
          ),
          new Container(
              width: this.height * 0.78,
              height: this.height * 0.78,
              decoration: new BoxDecoration(
                color: CustomColors.mainColor,
                shape: BoxShape.circle,
              )),
          new Container(child: this.child)
        ],
        alignment: Alignment(0, 0),
      ),
      height: this.height,
    );
  }
}
