import 'package:flutter/material.dart';
import 'package:nlp/home.dart';
import 'package:nlp/providers/dropdown_provider.dart';
import 'package:provider/provider.dart';

import 'nlp_data/fetch_api_data.dart';
import 'nlp_data/nlp_data_functions.dart';

git a
void main()  async {
  ///fetch data
  await fetchdata();
  // gbd_function();

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
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider<drop_provider_val>(create: (_) => drop_provider_val(),)],
        child: const MyApp(),
    )
     );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
