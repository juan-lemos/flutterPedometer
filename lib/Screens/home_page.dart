import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Widgets/Commons/CustomCard.dart';
import 'package:flutter_pedometer/Widgets/DaysResumeCard.dart';
import 'package:flutter_pedometer/Widgets/Commons/CircularPorogress.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constants/Fonts.dart' as Fonts;

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
        body: new Container(width: screenWidth, child: DaysResumeCard()
            //     CustomCard(
            //   child: ConstrainedBox(
            //       constraints: BoxConstraints(maxHeight: 60),
            //       child: FittedBox(
            //         child: Row(children: [
            //           Text(
            //               '25,000 / 10fdsf0,00afjsaldjflajsld jlasj lkajsfkljasdklfj akl0',
            //               style: TextStyle(
            //                 color: CustomColors.completeColor,
            //                 fontSize: 20,
            //                 fontFamily: Fonts.mainFont,
            //                 fontWeight: FontWeight.w600,
            //               )),
            //           CircularPorogress(height: 70, child: Text('fs')),
            //         ]),
            //         fit: BoxFit.contain,
            //       )),
            //   height: 200,
            // ),
            ));
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
