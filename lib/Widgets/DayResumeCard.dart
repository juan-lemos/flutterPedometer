import 'package:flutter/material.dart';
import './Commons/CustomCard.dart';
import 'package:flutter_pedometer/Widgets/Commons/ResumeThreeElements.dart';

class DayResumeCard extends StatelessWidget {
  final int distance;
  final int energy;
  final int time;

  DayResumeCard({this.distance, this.energy, this.time});

  @override
  Widget build(BuildContext context) {
    return new CustomCard(
        child: Padding(
          child: ResumeThreeElements(
              distance: this.distance, energy: this.energy, time: this.time),
          padding: EdgeInsets.only(left: 20, right: 20),
        ),
        height: 110);
  }
}
