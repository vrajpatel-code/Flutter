import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User {
  final int id;
  final String name;
  final String phone;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
  });

  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     id: json['id'],
  //     name: json['name'],
  //     phone: json['phone'],
  //     email: json['email'],
  //   );
  // }
}

class Apicall extends StatefulWidget {
  const Apicall({super.key});

  @override
  State<Apicall> createState() => _ApicallState();
}

class _ApicallState extends State<Apicall> {
  List<User> users = [];

  Future<void> callApi() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users');
    var response = await http.get(url);
    print("Response status: ${response.statusCode}");

    List<dynamic> jsonData = jsonDecode(response.body);
    users = jsonData
        .map(
          (json) => User(
            id: json['id'],
            name: json['name'],
            phone: json['phone'],
            email: json['email'],
          ),
        )
        .toList();
    setState(() {
      users = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API Call")),
      body: ListView.builder(
        itemCount: users.length + 1,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == 0) {
            return ElevatedButton(onPressed: callApi, child: Text("Call API"));
          }
          User u = users[index - 1];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Name: ${u.name}"), Text("Email: ${u.email}")],
            ),
          );
        },
      ),
    );
  }
}
