import 'package:flutter/material.dart';
import 'package:nlp/home.dart';

import 'chart/category_chart.dart';
import 'nlp data/nlp_data_functions.dart';

void main() {
  ///main function
  main_data();

  /// kinds function
  service_kinds();
  ui_kinds();
  Iot_kinds();
  solar_kinds();

  ///categor functions
  all_categories();
  good_categories();
  bad_categories();
  neutral_categories();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NLP Demo Web App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _home() {
    // print("hello");
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the NLP Demo App Analysis',
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () => _home(),
              child: Text(
                "Go to DashBoard",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}