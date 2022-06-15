import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../nlp_data/nlp_data_functions.dart';

List<BarChartGroupData> barChartGroupData(topic) => List.generate(4, (i) {
      switch (i) {
        case 0:
          return makeGroupData(
              1,
              topic == 'All'
                  ? s_all.toDouble()
                  : topic == 'Good'
                      ? s_good.toDouble()
                      : topic == 'Bad'
                          ? s_bad.toDouble()
                          : topic == 'Neutral'
                              ? s_neutral.toDouble()
                              : 10);
        case 1:
          return makeGroupData(
              2,
              topic == 'All'
                  ? u_all.toDouble()
                  : topic == 'Good'
                      ? u_good.toDouble()
                      : topic == 'Bad'
                          ? u_bad.toDouble()
                          : topic == 'Neutral'
                              ? u_neutral.toDouble()
                              : 25);
        case 2:
          return makeGroupData(
              3,
              topic == 'All'
                  ? i_all.toDouble()
                  : topic == 'Good'
                      ? i_good.toDouble()
                      : topic == 'Bad'
                          ? i_bad.toDouble()
                          : topic == 'Neutral'
                              ? i_neutral.toDouble()
                              : 5);
        case 3:
          return makeGroupData(
              4,
              topic == 'All'
                  ? so_all.toDouble()
                  : topic == 'Good'
                      ? so_good.toDouble()
                      : topic == 'Bad'
                          ? so_bad.toDouble()
                          : topic == 'Neutral'
                              ? so_neutral.toDouble()
                              : 15);
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
