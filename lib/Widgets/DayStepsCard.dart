import 'package:flutter/material.dart';
import './Commons/CustomCard.dart';
import './Commons/CircularPorogress.dart';
import 'package:flutter_pedometer/Constans/Colors.dart' as CustomColors;
import './Commons/MainProgressText.dart';

class DayStepsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomCard(
      child: CircularPorogress(
          height: 200,
          child: MainProgressText(goalSteps: 100000, steps: 25000)),
      height: 225,
    );
  }
}
