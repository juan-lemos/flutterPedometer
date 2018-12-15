import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_pedometer/Constans/colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constans/fonts.dart' as Fonts;
import '../Utils/Colors.dart';

class SparkBar extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SparkBar(this.seriesList, {this.animate});

  factory SparkBar.withSampleData() {
    return new SparkBar(
      _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final staticTicks = <charts.TickSpec<String>>[
      new charts.TickSpec(
        '2019',
        label: 'Year 2014',
      )
    ];

    return new charts.BarChart(
      seriesList,
      animate: animate,
      primaryMeasureAxis:
          new charts.NumericAxisSpec(renderSpec: new charts.NoneRenderSpec()),
      domainAxis: new charts.OrdinalAxisSpec(
        showAxisLine: true,
        renderSpec: new charts.SmallTickRendererSpec(
          labelStyle: new charts.TextStyleSpec(
              fontSize: 12,
              color: colorToChartColor(CustomColors.white),
              fontFamily: Fonts.mainFont),
          lineStyle: new charts.LineStyleSpec(
              thickness: 2, color: colorToChartColor(CustomColors.white)),
          labelOffsetFromAxisPx: 15,
          tickLengthPx: 0,
        ),
        tickProviderSpec: new charts.StaticOrdinalTickProviderSpec(staticTicks),
      ),
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
      new OrdinalSales('2019', 3500),
      new OrdinalSales('2020', 5000),
      new OrdinalSales('2021', 2500),
      new OrdinalSales('2022', 3200),
      new OrdinalSales('2023', 4500),
      new OrdinalSales('2024', 4400),
      new OrdinalSales('2025', 5000),
      new OrdinalSales('2026', 5000),
      new OrdinalSales('2027', 4500),
      new OrdinalSales('2028', 4300),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        fillColorFn: (_, __) => colorToChartColor(CustomColors.completeColor),
        id: 'Global Revenue',
        domainFn: (OrdinalSales sales, _) => sales.label,
        measureFn: (OrdinalSales sales, _) => sales.number,
        data: globalSalesData,
      ),
    ];
  }
}

class OrdinalSales {
  final String label;
  final int number;

  OrdinalSales(this.label, this.number);
}
