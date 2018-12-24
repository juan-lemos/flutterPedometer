import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;
import 'package:flutter_pedometer/Utils/Formaters.dart';

class MainProgressText extends StatelessWidget {
  final int steps;
  final int goalSteps;

  MainProgressText({this.steps, this.goalSteps});

  @override
  Widget build(BuildContext context) {
    String stepsString = formatNumber(this.steps);
    String goalStepsString = formatNumber(this.goalSteps);

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
            fontSize: 15,
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
