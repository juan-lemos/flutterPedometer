import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_pedometer/Constans/colors.dart' as CustomColors;
import 'package:flutter_pedometer/Constans/fonts.dart' as Fonts;
import 'package:flutter_pedometer/Utils/Colors.dart';

class BarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final List<charts.TickSpec<String>> ticksList;
  final bool renderPrimaryAxis;
  BarChart._(this.seriesList, this.ticksList, this.renderPrimaryAxis);

  factory BarChart(
      {@required List<ChartItem> chartItems,
      @required String seriesId,
      @required bool renderPrimaryAxis}) {
    return new BarChart._(
        transmforToSeriesList(list: chartItems, seriesId: seriesId),
        transformToTickSpeckList(list: chartItems),
        renderPrimaryAxis);
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: true,
      primaryMeasureAxis: new charts.NumericAxisSpec(
        tickProviderSpec:
            new charts.BasicNumericTickProviderSpec(desiredTickCount: 4),
        renderSpec: this.renderPrimaryAxis
            ? charts.GridlineRendererSpec(
                labelStyle: new charts.TextStyleSpec(
                    fontSize: 12,
                    color: colorToChartColor(CustomColors.white),
                    fontFamily: Fonts.mainFont),
                lineStyle: new charts.LineStyleSpec(
                    thickness: 1, color: colorToChartColor(CustomColors.white)),
              )
            : new charts.NoneRenderSpec(),
      ),
      domainAxis: new charts.OrdinalAxisSpec(
        showAxisLine: true,
        renderSpec: new charts.SmallTickRendererSpec(
          labelStyle: new charts.TextStyleSpec(
              fontSize: 12,
              color: colorToChartColor(CustomColors.white),
              fontFamily: Fonts.mainFont),
          lineStyle: new charts.LineStyleSpec(
              thickness: 2, color: colorToChartColor(CustomColors.white)),
          labelOffsetFromAxisPx: 10,
          tickLengthPx: 0,
        ),
        tickProviderSpec: new charts.StaticOrdinalTickProviderSpec(ticksList),
      ),
    );
  }
}

class ChartItem {
  final String id;
  final int amount;
  final String labelName;
  final Color color;
  ChartItem(
      {@required this.id, @required this.amount, this.labelName, this.color});
}

List<charts.Series<ChartItem, String>> transmforToSeriesList(
    {@required List<ChartItem> list, @required String seriesId}) {
  return [
    new charts.Series<ChartItem, String>(
      fillColorFn: (ChartItem item, __) => colorToChartColor(
          item.color != null ? item.color : CustomColors.completeColor),
      id: seriesId,
      domainFn: (ChartItem item, _) => item.id,
      measureFn: (ChartItem item, _) => item.amount,
      data: list,
    ),
  ];
}

List<charts.TickSpec<String>> transformToTickSpeckList(
    {@required List<ChartItem> list}) {
  List<charts.TickSpec<String>> tickSpecList = [];
  list.forEach((item) {
    if (item.labelName != null) {
      tickSpecList.add(new charts.TickSpec(
        item.id,
        label: item.labelName,
      ));
    }
  });
  return tickSpecList;
}
