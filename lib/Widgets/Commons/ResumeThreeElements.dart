import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/Commons/IconMessureUnit.dart';
import 'package:flutter_pedometer/Constants/pedometer_icons.dart'
    as CustomIcons;

class ResumeThreeElements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: IconMessureUnit(
            icon: Icons.linear_scale,
            messureUnit: 'Kcal',
            numberValue: '532,333',
          ),
          flex: 1,
        ),
        Expanded(
          child: IconMessureUnit(
            icon: CustomIcons.Pedometer.fire,
            messureUnit: 'Kcal',
            numberValue: '155,220',
          ),
          flex: 1,
        ),
        Expanded(
          child: IconMessureUnit(
            icon: Icons.timer,
            messureUnit: 'Kcal',
            numberValue: '744:00034233',
          ),
          flex: 1,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
