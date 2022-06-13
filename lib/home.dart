import 'package:flutter/material.dart';
import 'package:nlp/providers/dropdown_provider.dart';

import 'chart/category_chart.dart';
import 'chart/kinds_chart.dart';
import 'chart/main_chart.dart';
import 'chart_container.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // for dropdown
  // String dropdownvalue = 'select';
  // String maindropdownvalue = 'ALL';
  // String kindsdropdownvalue = 'select';
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
    drop_provider_val pvd = Provider.of<drop_provider_val>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            DropdownButton(
              value: pvd.maindropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: main_items.map((String main_items) {
                return DropdownMenuItem(
                  value: main_items,
                  child: Text(main_items),
                );
              }).toList(),
              onChanged: (String? newVal) {
                pvd.setmdrop = newVal!;
                // print(pvd.maindropdownvalue);
                pvd.setdrop = 'select';
                pvd.setkdrop = 'select';
                // setState(() {
                //   maindropdownvalue = newVal!;
                //   dropdownvalue = 'select';
                //   kindsdropdownvalue = 'select';
                //   print("onchange:= " + maindropdownvalue);
                // });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: pvd.maindropdownvalue == 'Categories' ? true : false,
              child: DropdownButton(
                value: pvd.dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  pvd.setdrop = newValue!;
                  // setState(() {
                  //   dropdownvalue = newValue!;
                  //   print("onchange:= " + dropdownvalue);
                  // });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: pvd.maindropdownvalue == 'Kinds' ? true : false,
              child: DropdownButton(
                value: pvd.kindsdropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: kinds_items.map((String kinds_items) {
                  return DropdownMenuItem(
                    value: kinds_items,
                    child: Text(kinds_items),
                  );
                }).toList(),
                onChanged: (String? val) {
                  pvd.setkdrop = val!;
                  // setState(() {
                  //   kindsdropdownvalue = val!;
                  // });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: pvd.dropdownvalue != 'select' ? true : false,
              child: ChartContainer(
                title: pvd.dropdownvalue == 'All'
                    ? 'Bar Chart with All Categories '
                    : pvd.dropdownvalue == 'Good'
                        ? 'Bar Chart with Good Values '
                        : pvd.dropdownvalue == 'Bad'
                            ? 'Bar Chart with Bad Values '
                            : pvd.dropdownvalue == 'Neutral'
                                ? 'Bar Chart with Neutral Values '
                                : 'Bar Chart',
                color: Colors.transparent,
                chart: BarChartContent(
                  dropdownvalue: pvd.dropdownvalue,
                ),
              ),
            ),
            Visibility(
              visible: pvd.maindropdownvalue == 'ALL' ? true : false,
              child: ChartContainer(
                title: 'Bar Chart',
                color: Colors.transparent,
                chart: BarMainChartContent(
                  dropdownvalue: pvd.maindropdownvalue,
                ),
              ),
            ),
            Visibility(
              visible: pvd.kindsdropdownvalue != 'select' ? true : false,
              child: ChartContainer(
                title: pvd.kindsdropdownvalue == 'Services'
                    ? 'Services Bar Chart'
                    : pvd.kindsdropdownvalue == 'UI'
                        ? 'UI Bar Chart'
                        : pvd.kindsdropdownvalue == 'Iot'
                            ? 'Iot Bar Chart'
                            : pvd.kindsdropdownvalue == 'Solar'
                                ? 'Solar Bar Chart'
                                : 'Bar Chart',
                color: Colors.transparent,
                chart: BarKindsChartContent(
                  dropdownvalue: pvd.kindsdropdownvalue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
