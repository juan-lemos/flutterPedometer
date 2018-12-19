import 'package:flutter/material.dart';
import './Commons/CustomCard.dart';
import 'package:flutter_pedometer/Widgets/Commons/ResumeThreeElements.dart';

class DayResumeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomCard(
        child: Padding(
          child: ResumeThreeElements(),
          padding: EdgeInsets.only(left: 20, right: 20),
        ),
        height: 110);
  }
}
