import 'package:application_1/Widgets/FirstWidget.dart';
import 'package:application_1/Widgets/MyName.dart';
import 'package:application_1/Widgets/RowEx.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(MaterialApp(home: Scaffold(body: FirstWidget())));
  runApp(
    MaterialApp(
      title: "VRAJ's APP",
      home: Scaffold(
        body: RowEx(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Center(child: Text("My App")),
        ),
        backgroundColor: const Color.fromARGB(255, 194, 219, 245),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
