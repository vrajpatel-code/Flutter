import 'package:flutter/material.dart';

class RowEx extends StatelessWidget {
  const RowEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 46, 61, 77),
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "=> Vraj 😎 ",
            style: TextStyle(
              color: const Color.fromARGB(255, 194, 219, 245),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "=> Udit 😁 ",
            style: TextStyle(
              color: const Color.fromARGB(255, 194, 219, 245),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "=> Bhargav 🤡 ",
            style: TextStyle(
              color: const Color.fromARGB(255, 194, 219, 245),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            "=> Ved 🤮 ",
            style: TextStyle(
              color: const Color.fromARGB(255, 194, 219, 245),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
