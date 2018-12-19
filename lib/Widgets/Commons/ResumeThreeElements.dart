import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/Commons/IconMessureUnit.dart';
import 'package:flutter_pedometer/Constants/pedometer_icons.dart'
    as CustomIcons;

class ResumeThreeElements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        IconMessureUnit(
          icon: Icons.linear_scale,
          messureUnit: 'Kcal',
          numberValue: '52,222',
        ),
        IconMessureUnit(
          icon: CustomIcons.Pedometer.fire,
          messureUnit: 'Kcal',
          numberValue: '52,222',
        ),
        IconMessureUnit(
          icon: Icons.timer,
          messureUnit: 'Kcal',
          numberValue: '52,222',
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
