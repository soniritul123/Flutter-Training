import 'package:flutter/material.dart';

class MyHorizontallist extends StatefulWidget {
  const MyHorizontallist({super.key});

  @override
  State<MyHorizontallist> createState() => _MyHorizontallistState();
}

class _MyHorizontallistState extends State<MyHorizontallist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.teal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.holiday_village),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.lightGreen,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.holiday_village),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.holiday_village),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.holiday_village),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.pink,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.holiday_village),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purpleAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.holiday_village),
            ),
          ),
        ],
      ),
    );
  }
}