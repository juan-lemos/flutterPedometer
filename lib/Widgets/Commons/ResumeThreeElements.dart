import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/Commons/IconMessureUnit.dart';
import 'package:flutter_pedometer/Constants/pedometer_icons.dart'
    as CustomIcons;

class ResumeThreeElements extends StatelessWidget {
  final int distance;
  final int energy;
  final int time;

  ResumeThreeElements({this.distance, this.energy, this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: IconMessureUnit(
            icon: Icons.linear_scale,
            messureUnit: 'm',
            numberValue: this.distance.toString(),
          ),
          flex: 1,
        ),
        Expanded(
          child: IconMessureUnit(
            icon: CustomIcons.Pedometer.fire,
            messureUnit: 'kcal',
            numberValue: this.energy.toString(),
          ),
          flex: 1,
        ),
        Expanded(
          child: IconMessureUnit(
            icon: Icons.timer,
            messureUnit: 'min',
            numberValue: this.time.toString(),
          ),
          flex: 1,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
