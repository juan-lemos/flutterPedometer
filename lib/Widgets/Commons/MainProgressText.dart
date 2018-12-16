import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;
import 'package:intl/intl.dart';

class MainProgressText extends StatelessWidget {
  final int steps;
  final int goalSteps;

  MainProgressText({this.steps, this.goalSteps});

  @override
  Widget build(BuildContext context) {
    var f = new NumberFormat("#,###", "en_US");
    String stepsString = f.format(this.steps);
    String goalStepsString = f.format(this.goalSteps);

    return Column(
      children: <Widget>[
        Text(
          stepsString,
          style: TextStyle(
            color: CustomColors.white,
            fontSize: 30,
            fontFamily: Fonts.mainFont,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          height: 5,
        ),
        Text(
          '/ $goalStepsString\n Steps',
          style: TextStyle(
            color: CustomColors.white,
            fontSize: 13,
            fontFamily: Fonts.mainFont,
          ),
          textAlign: TextAlign.center,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
