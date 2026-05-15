import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apicall extends StatefulWidget {
  const Apicall({super.key});

  @override
  State<Apicall> createState() => _ApicallState();
}

class _ApicallState extends State<Apicall> {
  Future<void> callApi() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users');
    var response = await http.get(url);
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Call")),
      body: OutlinedButton(
        onPressed: () {
          callApi();
        },
        child: Text("Call API"),
      ),
    );
  }
}
