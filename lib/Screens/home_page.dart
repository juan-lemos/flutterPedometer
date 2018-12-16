import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/Commons/CustomCard.dart'
    show CustomCard;
// import 'package:flutter_pedometer/Constans/colors.dart' as CustomColors;
import 'package:flutter_pedometer/Widgets/DayChartCard.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return new Scaffold(
        appBar: new AppBar(
            // backgroundColor: MeSuiteColors.blue,
            automaticallyImplyLeading: false,
            title: new Text(this.title),
            actions: [
              // new ToolbarLogOutButton(),
            ]),
        body: new Container(width: screenWidth, child: DayChartCard()));
  }
}
