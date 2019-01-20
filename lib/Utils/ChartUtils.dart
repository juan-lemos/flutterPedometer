import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Models/ChartItem.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as Colors;

List<ChartItem> daysListToChartItems(
    {@required List<int> daysSteps, @required int goalSteps}) {
  List<String> daysList = [
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    'S'
  ]; //TODO constans and translate
  List<ChartItem> newList = [];
  for (var i = 0; i < daysList.length; i++) {
    newList.add(ChartItem(
        amount: daysSteps[i],
        id: '$i',
        color: daysSteps[i] < goalSteps
            ? Colors.incompleteColor
            : Colors.completeColor,
        labelName: daysList[i]));
  }
  return newList;
}
