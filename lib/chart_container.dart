import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  final Color color;
  final String title;
  final Widget chart;

  const ChartContainer({
    Key? key,
    required this.title,
    required this.color,
    required this.chart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        // MediaQuery.of(context).size.width * 0.2,
        height: 400,
        // MediaQuery.of(context).size.width * 0.2 * 0.25,
        padding: EdgeInsets.fromLTRB(0, 10, 20, 30),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 10),
              child: chart,
            ))
          ],
        ),
      ),
    );
  }
}
