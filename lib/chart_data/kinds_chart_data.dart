import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../nlp_data/nlp_data_functions.dart';

List<BarChartGroupData> barKindsChartGroupData(topic) => List.generate(3, (i) {
      switch (i) {
        case 0:
          return makeGroupData(
              1,
              topic == 'Services'
                  ? s_gkinds.toDouble()
                  : topic == 'UI'
                      ? u_gkinds.toDouble()
                      : topic == 'Iot'
                          ? i_gkinds.toDouble()
                          : topic == 'Solar'
                              ? so_gkinds.toDouble()
                              : 5);
        case 1:
          return makeGroupData(
              2,
              topic == 'Services'
                  ? s_bkinds.toDouble()
                  : topic == 'UI'
                      ? u_bkinds.toDouble()
                      : topic == 'Iot'
                          ? i_bkinds.toDouble()
                          : topic == 'Solar'
                              ? so_bkinds.toDouble()
                              : 5);
        case 2:
          return makeGroupData(
              3,
              topic == 'Services'
                  ? s_nkinds.toDouble()
                  : topic == 'UI'
                      ? u_nkinds.toDouble()
                      : topic == 'Iot'
                          ? i_nkinds.toDouble()
                          : topic == 'Solar'
                              ? so_nkinds.toDouble()
                              : 5);
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
