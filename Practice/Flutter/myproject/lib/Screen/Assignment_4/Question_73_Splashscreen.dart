import 'package:flutter/material.dart';

class Question73HomePage extends StatefulWidget {
  const Question73HomePage({super.key});

  @override
  State<Question73HomePage> createState() => _Question73HomePageState();
}

class _Question73HomePageState extends State<Question73HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 300,
            color: Colors.teal,
            child: Center(
              child: Text("Welcome"),
            ),
          )
        ],
      ),
    );
  }
}