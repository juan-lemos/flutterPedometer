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
            child: CustomCard(child: SparkBar.withSampleData(), height: 300)
            // child: CustomCard(
            //   child: CircularPorogress(
            //       height: 200, child: MainProgressText(25000, 100000)),
            // ),
            ));
  }
}
