import 'package:flutter/material.dart';
import '../Widgets/CustomCard.dart' show CustomCard;
// import '../Widgets/CircularPorogress.dart';
// import '../Widgets/MainProgressText.dart';
// import 'package:flutter_pedometer/Constans/colors.dart' as CustomColors;
import '../Widgets/BarChart.dart';

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
              child: BarChart(
                chartItems: [
                  ChartItem(id: '1', amount: 400, labelName: 'my name'),
                  ChartItem(id: '2', amount: 50)
                ],
                seriesId: 'items142',
                renderPrimaryAxis: true,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 0),
              // height: 100,
            ),
          ),
          height: 150,
        ));
  }
}
