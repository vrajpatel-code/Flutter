import 'package:flutter/material.dart';

class C_R extends StatelessWidget {
  C_R({super.key});

  Map<String, dynamic> mapD = {
    "NAME": "VRAJ",
    "ID": "24CP311",
    "CITY": "ANAND",
    "COLLEGE": "BVM",
    "CGPA": 7.8,
  };

  
  var Kstyle = TextStyle(
    fontSize: 20,
    color: const Color.fromARGB(255, 34, 58, 246),
    fontWeight: FontWeight.bold,
  );
  var Vstyle = TextStyle(fontSize: 20, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: const Color.fromARGB(141, 104, 245, 231),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,

        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              

              for (var key in mapD.keys) Text(key, style: Kstyle),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (var v in mapD.values)
                Text(":  ${v.toString()}", style: Vstyle),
            ],
          ),
        ],
      ),
    );
  }
}
