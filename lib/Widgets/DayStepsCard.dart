import 'package:flutter/material.dart';
import './Commons/CustomCard.dart';
import './Commons/CircularPorogress.dart';
import 'package:flutter_pedometer/Constans/Colors.dart' as CustomColors;

class DayStepsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomCard(
      child: CircularPorogress(
          height: 200,
          child: Text(
            '25,000',
            style: TextStyle(
              color: CustomColors.white,
              fontSize: 30,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          )),
      height: 225,
    );
  }
}
