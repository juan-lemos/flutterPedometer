import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/UserSettingCard.dart';

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
        body: new Container(width: screenWidth, child: UserSettingCard()));
  }
}

// child: Container(
//     margin:
//         EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 4),
//     alignment: Alignment.centerRight,
//     child: new Material(
//       color: colors.transparent,
//       shape: new CircleBorder(),
//       child: new IconButton(
//           alignment: Alignment.center,
//           icon: new Icon(Icons.access_alarm),
//           tooltip: 'list',
//           onPressed: () => debugPrint('#debug print')),
//     ))
