// 67. Write a code to display profile and logout option in options menu

import 'package:flutter/material.dart';

class Question67 extends StatefulWidget {
  const Question67({super.key});

  @override
  State<Question67> createState() => _Question67State();
}

class _Question67State extends State<Question67> {
  String? optns = "Options";
  String? Prof = "Profile";
  String? log = "Log Out";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_67"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(children: [
        ListTile(
          title: Text("$optns"),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("$Prof"),
                value: Prof,
              ),
              PopupMenuItem(
                child: Text("$log"),
                value: log,
              )
            ],
            onSelected: (String newvalue) {
              setState(() {
                Text("$newvalue");
              });
            },
          ),
        ),
      ]),
    );
  }
}