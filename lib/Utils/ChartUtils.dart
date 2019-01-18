import 'package:flutter/material.dart';
import 'package:flutter_pedometer/Models/ChartItem.dart';
import 'package:flutter_pedometer/Constants/Colors.dart' as Colors;

double getIntListAverage(List<int> numbers) {
  return numbers.reduce((curr, next) => curr + next) / numbers.length;
}

List<ChartItem> daysListToChartItems({@required List<int> daysSteps}) {
  List<String> daysList = [
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    'S'
  ]; //TODO constans and translate
  double average = getIntListAverage(daysSteps);
  List<ChartItem> newList = [];
  for (var i = 0; i < 7; i++) {
    newList.add(ChartItem(
        amount: daysSteps[i],
        id: '$i',
        color: daysSteps[i] < average
            ? Colors.incompleteColor
            : Colors.completeColor,
        labelName: daysList[i]));
  }
  return newList;
}
