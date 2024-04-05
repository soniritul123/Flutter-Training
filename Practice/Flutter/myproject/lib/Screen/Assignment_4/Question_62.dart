// 62. Write a code to display simple alert dialog with title, description and
// icon when button is clicked

import 'package:flutter/material.dart';

class Question62 extends StatefulWidget {
  const Question62({super.key});

  @override
  State<Question62> createState() => _Question62State();
}

class _Question62State extends State<Question62> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 62"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              TextButton.icon(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.back_hand),
                                  label: Text("Back"))
                            ],
                            title: Text("Hello"),
                            contentPadding: EdgeInsets.all(20),
                            content: Text("Alert Dialog"),
                          ));
                },
                child: Text("show dialog")),
          ),
        ],
      ),
    );
  }
}