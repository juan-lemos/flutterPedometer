import 'package:flutter/material.dart';

class ChartItem {
  final String id;
  final int amount;
  final String labelName;
  final Color color;
  ChartItem(
      {@required this.id, @required this.amount, this.labelName, this.color});
}
