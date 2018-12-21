import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;

class IconMessureUnit extends StatelessWidget {
  final IconData icon;
  final String numberValue;
  final String messureUnit;

  IconMessureUnit(
      {@required this.icon,
      @required this.numberValue,
      @required this.messureUnit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          this.icon,
          size: 27,
          color: CustomColors.white,
        ),
        Container(
          height: 12,
        ),
        Container(
          child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: (Text(
                    this.numberValue,
                    style: TextStyle(
                      color: CustomColors.white,
                      fontSize: 20,
                      fontFamily: Fonts.mainFont,
                      fontWeight: FontWeight.w600,
                    ),
                  )))),
          height: 22,
        ),
        Text(
          this.messureUnit,
          style: TextStyle(
            color: CustomColors.white,
            fontSize: 13,
            fontFamily: Fonts.mainFont,
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
