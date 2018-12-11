import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constans/colors.dart' as CustomColors;

class CustomCard extends StatelessWidget {
  final Widget child;
  final double height;

  CustomCard({this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(left: 8, right: 8),
        color: CustomColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: child,
            height: this.height,
          ),
        ));
  }
}
