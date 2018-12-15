import 'package:flutter/material.dart';
import '../Widgets/CustomCard.dart' show CustomCard;
// import '../Widgets/CircularPorogress.dart';
// import '../Widgets/MainProgressText.dart';
// import 'package:flutter_pedometer/Constans/colors.dart' as CustomColors;
import '../Widgets/SparkBar.dart';

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
        body: new Container(
          width: screenWidth,
          child: CustomCard(
            child: Container(
              child: SparkBar.withSampleData(),
              padding:
                  EdgeInsets.only(left: 47, right: 47, bottom: 34, top: 30),
              // height: 100,
            ),
          ),
          height: 150,
        ));
  }
}
