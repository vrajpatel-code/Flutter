import 'package:flutter/material.dart';

class StackUse extends StatelessWidget {
  const StackUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Icon(Icons.account_box_rounded, size: 100, color: Colors.black),

        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(206, 76, 242, 84),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Active',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
