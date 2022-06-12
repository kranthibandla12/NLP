import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nlp/chart_data/category_chart_data.dart';

import '../chart_data/kinds_chart_data.dart';
import '../chart_data/main_chart_data.dart';

class BarKindsChartContent extends StatelessWidget {
  const BarKindsChartContent({required this.dropdownvalue});
  final String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: barKindsChartGroupData(dropdownvalue),

        ///main function to call data
        gridData: FlGridData(show: false),
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.blueGrey,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                String topic;
                switch (group.x.toInt()) {
                  case 1:
                    topic = 'Good';
                    break;
                  case 2:
                    topic = 'Bad';
                    break;
                  case 3:
                    topic = 'Neutral';
                    break;
                  default:
                    throw Error();
                }
                return BarTooltipItem(
                  topic + '\n',
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: (rod.toY).toString(),
                      style: const TextStyle(
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                );
              }),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.white),
            left: BorderSide(width: 1.0, color: Colors.black),
            right: BorderSide(width: 1.0, color: Colors.white),
            bottom: BorderSide(width: 1.0, color: Colors.black),
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getTitles,
              reservedSize: 38,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 38,
            ),
          ),
        ),
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Good', style: style);
        break;
      case 2:
        text = const Text('Bad', style: style);
        break;
      case 3:
        text = const Text('Neutral', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      child: text,
      axisSide: meta.axisSide,
      space: 16,
    );
  }
}
