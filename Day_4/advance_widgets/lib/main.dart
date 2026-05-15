//import 'package:advance_widgets/Widgets/C_R.dart';
import 'package:advance_widgets/Widgets/UseStateFull.dart';
//import 'package:advance_widgets/Widgets/UsingMap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(120, 77, 159, 213),
        body: UseStateFull(),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Vraj \'s App',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
