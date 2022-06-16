import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../nlp_data/fetch_api_data.dart';

class review_board extends StatefulWidget {
  const review_board({Key? key}) : super(key: key);

  @override
  State<review_board> createState() => _review_boardState();
}

class _review_boardState extends State<review_board> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reviews Table"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaginatedDataTable(

              source: _data,
              columns: [
                DataColumn(label: Container(width: 20, child: Text('S.no'),),),
                DataColumn(label: Text('User Name')),
                DataColumn(label: Text('Review')),
                DataColumn(label: Text('Reply')),
                DataColumn(label: Text('Rating')),
                DataColumn(label: Text('Good_score')),
                DataColumn(label: Text('Good')),
                DataColumn(label: Text('Bad_score')),
                DataColumn(label: Text('Bad')),
                DataColumn(label: Text('Neutral')),
                DataColumn(label: Text('service_score')),
                DataColumn(label: Text('services_array')),
                DataColumn(label: Text('ui_score')),
                DataColumn(label: Text('ui_array')),
                DataColumn(label: Text('iot_score')),
                DataColumn(label: Text('iot_array')),
                DataColumn(label: Text('solar_score')),
                DataColumn(label: Text('solar_array')),
              ],
              columnSpacing: 20,
              horizontalMargin: 2,
              rowsPerPage: 10,
              dataRowHeight: 150,
              showCheckboxColumn: false,
              dragStartBehavior: DragStartBehavior.down,
            ),
          ],
        ),
      ),
    );
  }
}

class MyData extends DataTableSource {
  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => good_score.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(Container(width: 150.0, child: Text(user_name_array[index].toString()),),),
      DataCell(Container(width: 200.0, child: Text(content_array[index].toString()),),),
      DataCell(Container(width: 200.0, child: Text(reply_content_array[index].toString()),),),
      DataCell(Text(rating_score[index].toString())),
      DataCell(Text(good_score[index].toString())),
      DataCell(Text(good_array[index].toString())),
      DataCell(Text(bad_score[index].toString())),
      DataCell(Text(bad_array[index].toString())),
      DataCell(Text(neutral_array[index].toString())),
      DataCell(Text(service_score[index].toString())),
      DataCell(Text(services_array[index].toString())),
      DataCell(Text(ui_score[index].toString())),
      DataCell(Text(ui_array[index].toString())),
      DataCell(Text(iot_score[index].toString())),
      DataCell(Text(iot_array[index].toString())),
      DataCell(Text(solar_score[index].toString())),
      DataCell(Text(solar_array[index].toString())),
    ]);
  }
}
