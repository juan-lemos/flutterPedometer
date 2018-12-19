import 'package:flutter/material.dart';
import './Commons/CustomCard.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;
import 'package:flutter_pedometer/Widgets/Commons/ResumeThreeElements.dart';
import 'package:flutter_pedometer/Widgets/Commons/CircularPorogress.dart';
import 'package:flutter_pedometer/Constants/pedometer_icons.dart'
    as CustomIcons;

class DaysResumeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomCard(
        child: Padding(
          child: Column(
            children: <Widget>[
              ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 70),
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('Monday\nOct 22',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CustomColors.white,
                                    fontSize: 13,
                                    fontFamily: Fonts.mainFont,
                                  ))
                            ],
                          ),
                          Container(width: 10),
                          Padding(
                            child: Row(
                              children: <Widget>[
                                CircularPorogress(
                                    height: 70,
                                    child: Icon(
                                      CustomIcons.Pedometer
                                          .footsteps_silhouette_variant,
                                      size: 27,
                                      color: CustomColors.white,
                                    )),
                                Container(width: 10),
                                Column(
                                  children: <Widget>[
                                    Text('25,000 / 100,000',
                                        style: TextStyle(
                                          color: CustomColors.white,
                                          fontSize: 20,
                                          fontFamily: Fonts.mainFont,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Container(
                                      height: 5,
                                    ),
                                    Text('Steps',
                                        style: TextStyle(
                                          color: CustomColors.white,
                                          fontSize: 13,
                                          fontFamily: Fonts.mainFont,
                                        )),
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.only(top: 7),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ))),
              ResumeThreeElements()
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
        ),
        height: 180);
  }
}
