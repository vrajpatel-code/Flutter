import 'package:flutter/material.dart';

class StackUse extends StatelessWidget {
  const StackUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Icon(Icons.person, size: 100, color: Colors.blue),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text('Active', style: TextStyle(fontSize: 24, color: Colors.green)),
        ),
      ],
    );
  }
}