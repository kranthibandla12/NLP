import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../nlp data/nlp_data.dart';
import '../nlp data/nlp_data_functions.dart';

List<BarChartGroupData> barMainChartGroupData(topic) => List.generate(3, (i) {
      switch (i) {
        case 0:
          return makeGroupData(1, topic == 'ALL' ? good.toDouble() : 10);
        case 1:
          return makeGroupData(2, topic == 'ALL' ? bad.toDouble() : 10);
        case 2:
          return makeGroupData(3, topic == 'ALL' ? neutral.toDouble() : 10);
        default:
          return throw Error();
      }
    });

BarChartGroupData makeGroupData(
  int x,
  double y, {
  double width = 25,
}) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        toY: y,
        width: width,
      )
    ],
  );
}
