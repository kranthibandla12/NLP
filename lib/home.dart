import 'package:flutter/material.dart';

import 'chart/category_chart.dart';
import 'chart/kinds_chart.dart';
import 'chart/main_chart.dart';
import 'chart_container.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // for dropdown
  String dropdownvalue = 'select';
  String maindropdownvalue = 'ALL';
  String kindsdropdownvalue = 'select';
  var items = [
    'select',
    'All',
    'Good',
    'Bad',
    'Neutral',
  ];
  var main_items = ['ALL', 'Kinds', 'Categories'];
  var kinds_items = ['select', 'Services', 'UI', 'Iot', 'Solar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            DropdownButton(
              value: maindropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: main_items.map((String main_items) {
                return DropdownMenuItem(
                  value: main_items,
                  child: Text(main_items),
                );
              }).toList(),
              onChanged: (String? newVal) {
                setState(() {
                  maindropdownvalue = newVal!;
                  dropdownvalue = 'select';
                  kindsdropdownvalue = 'select';
                  print("onchange:= " + maindropdownvalue);
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: maindropdownvalue == 'Categories' ? true : false,
              child: DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                    print("onchange:= " + dropdownvalue);
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: maindropdownvalue == 'Kinds' ? true : false,
              child: DropdownButton(
                value: kindsdropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: kinds_items.map((String kinds_items) {
                  return DropdownMenuItem(
                    value: kinds_items,
                    child: Text(kinds_items),
                  );
                }).toList(),
                onChanged: (String? val) {
                  setState(() {
                    kindsdropdownvalue = val!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: dropdownvalue != 'select' ? true : false,
              child: ChartContainer(
                title: dropdownvalue == 'All'
                    ? 'Bar Chart with All Categories '
                    : dropdownvalue == 'Good'
                        ? 'Bar Chart with Good Values '
                        : dropdownvalue == 'Bad'
                            ? 'Bar Chart with Bad Values '
                            : dropdownvalue == 'Neutral'
                                ? 'Bar Chart with Neutral Values '
                                : 'Bar Chart',
                color: Colors.transparent,
                chart: BarChartContent(
                  dropdownvalue: dropdownvalue,
                ),
              ),
            ),
            Visibility(
              visible: maindropdownvalue == 'ALL' ? true : false,
              child: ChartContainer(
                title: 'Bar Chart',
                color: Colors.transparent,
                chart: BarMainChartContent(
                  dropdownvalue: maindropdownvalue,
                ),
              ),
            ),
            Visibility(
              visible: kindsdropdownvalue != 'select' ? true : false,
              child: ChartContainer(
                title: kindsdropdownvalue == 'Services'
                    ? 'Services Bar Chart'
                    : kindsdropdownvalue == 'UI'
                        ? 'UI Bar Chart'
                        : kindsdropdownvalue == 'Iot'
                            ? 'Iot Bar Chart'
                            : kindsdropdownvalue == 'Solar'
                                ? 'Solar Bar Chart'
                                : 'Bar Chart',
                color: Colors.transparent,
                chart: BarKindsChartContent(
                  dropdownvalue: kindsdropdownvalue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
