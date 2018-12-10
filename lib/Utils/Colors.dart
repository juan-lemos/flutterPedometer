import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

charts.Color colorToChartColor(Color color) {
  return charts.Color(
      a: color.alpha, r: color.red, g: color.green, b: color.blue);
}
