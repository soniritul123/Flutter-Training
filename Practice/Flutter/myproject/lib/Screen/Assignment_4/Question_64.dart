// 64. Write a code to display alert dialog with list of cities and Single
// choice selection display selected city in TextView

import 'package:flutter/material.dart';

class Question64 extends StatefulWidget {
  const Question64({super.key});

  @override
  State<Question64> createState() => _Question64State();
}

class _Question64State extends State<Question64> {
  String? Cities = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Que 64"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  fun();
                },
                child: Text("Cities")),
            Text("cities =$Cities")
          ],
        ),
      ),
    );
  }

  void fun() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                actions: [
                  RadioListTile(
                      value: "udaipur",
                      title: Text("udaipur"),
                      groupValue: Cities,
                      onChanged: (value) {
                        setState(() {
                          Cities = value;
                        });
                      }),
                  RadioListTile(
                      value: "jaipur",
                      title: Text("jaipur"),
                      groupValue: Cities,
                      onChanged: (value) {
                        setState(() {
                          Cities = value;
                        });
                      }),
                  RadioListTile(
                      value: "Ahmdawad",
                      title: Text("Ahmdawad"),
                      groupValue: Cities,
                      onChanged: (value) {
                        setState(() {
                          Cities = value;
                        });
                      }),
                  RadioListTile(
                      value: "Surat",
                      title: Text("surat"),
                      groupValue: Cities,
                      onChanged: (value) {
                        setState(() {
                          Cities = value;
                        });
                      }),
                ],
              ));
    });
  }
}