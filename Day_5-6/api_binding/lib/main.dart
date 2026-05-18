import 'package:api_binding/MyWidgets/ApiCall.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Apicall()));
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
