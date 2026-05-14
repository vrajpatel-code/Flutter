import 'package:flutter/material.dart';

class myData {
  final String key;
  final dynamic value;
  final IconData icon;
  bool? iseditable = false;

  myData({
    required this.key,
    required this.value,
    required this.icon,
    this.iseditable = false,
  });
}

class Usingmap extends StatelessWidget {
  Usingmap({super.key});

  // Map<String, dynamic> mapD = {
  //   "NAME": "VRAJ",
  //   "ID": "24CP311",
  //   "CITY": "ANAND",
  //   "CGPA": 7.8,
  // };

  List<myData> dataList = [
    myData(key: "NAME", value: "VRAJ", icon: Icons.person, iseditable: true),
    myData(key: "ID", value: "24CP311", icon: Icons.badge),
    myData(key: "CITY", value: "ANAND", icon: Icons.location_city),
    myData(key: "CGPA", value: 7.8, icon: Icons.school),
  ];
  var Kstyle = TextStyle(
    fontSize: 15,
    color: Colors.green[900],
    fontWeight: FontWeight.bold,
  );
  var Vstyle = TextStyle(fontSize: 15, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 5,
        children: [
          ...dataList.map(
            (data) => Container(
              width: double.infinity,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green[900]!, width: 2),
                color: const Color.fromARGB(109, 71, 238, 66),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(data.icon, color: Colors.green[900], size: 20),
                  Text(data.key, style: Kstyle),
                  Text(":  ${data.value.toString()}", style: Vstyle),
                  data.iseditable == true
                      ? Icon(Icons.edit, color: Colors.green[900], size: 20)
                      : Container(),
                ],
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.green[900],
              side: BorderSide(color: Colors.green[900]!, width: 2),
            ),
            child: Text("Refresh Data"),
          ),
        ],
      ),
    );
  }
}
