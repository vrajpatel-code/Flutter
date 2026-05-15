// ignore: file_names
import 'package:advance_widgets/Widgets/StackUse.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
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

class UseStateFull extends StatefulWidget {
  const UseStateFull({super.key});

  @override
  State<UseStateFull> createState() => _UseStateFullState();
}

class _UseStateFullState extends State<UseStateFull> {

  List<myData> dataList = [
    myData(key: "NAME", value: "VRAJ", icon: Icons.person, iseditable: true),
    myData(key: "ID", value: "24CP311", icon: Icons.badge),
    myData(key: "CITY", value: "ANAND", icon: Icons.location_city),
    myData(key: "CGPA", value: 7.8, icon: Icons.school),
  ];
  // ignore: non_constant_identifier_names
  var Kstyle = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  // ignore: non_constant_identifier_names
  var Vstyle = TextStyle(fontSize: 15, color: Colors.white);

  void refreshData() {
    setState(() {
      dataList = [...dataList, myData(key: "SEM", value: 6, icon: Icons.book)];
    });
  }

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
          StackUse(),
          ...dataList.map(
            (data) => Container(
              width: double.infinity,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(181, 29, 27, 94),
                  width: 2,
                ),
                color: Colors.blue[700],
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
                  Icon(data.icon, color: Colors.black, size: 20),
                  Text(data.key, style: Kstyle),
                  Text(":  ${data.value.toString()}", style: Vstyle),
                  if (data.iseditable == true) Spacer(),
                  data.iseditable == true
                      ? Icon(Icons.edit, color: Colors.black, size: 20)
                      : Container(),
                ],
              ),
            ),
          ),
          OutlinedButton(
            onPressed: refreshData,
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
