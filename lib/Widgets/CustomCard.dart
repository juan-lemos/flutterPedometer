import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Constans/colors.dart' as Colors;

class CustomCard extends StatelessWidget {
  final Widget child;

  CustomCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(left: 8, right: 8),
        color: Colors.mainColor,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(child: this.child),
        ));
  }
}
