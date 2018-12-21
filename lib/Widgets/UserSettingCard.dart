import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/Commons/CustomCard.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;

class UserSettingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomCard(
      child: Row(children: [
        Expanded(
          child: Text(
            'Height',
            style: TextStyle(
              color: CustomColors.white,
              fontSize: 14,
              fontFamily: Fonts.secondaryFont,
            ),
          ),
          flex: 50,
        ),
        Expanded(
          child: Text('1,76',
              style: TextStyle(
                  color: CustomColors.white,
                  fontSize: 20,
                  fontFamily: Fonts.mainFont,
                  fontWeight: FontWeight.w600)),
          flex: 25,
        ),
        Expanded(
          child: Container(
            child: Text(
              'm',
              style: TextStyle(
                color: CustomColors.white,
                fontSize: 13,
                fontFamily: Fonts.mainFont,
              ),
            ),
            alignment: Alignment(0, 0),
          ),
          flex: 25,
        ),
      ]),
      height: 59,
    );
  }
}
