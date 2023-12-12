import 'package:flutter/material.dart';

class MyCardExample extends StatelessWidget {
  const MyCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Example"),
      ),
      body: Container(
        height: 300,
        width: 300,
        child: Card(
          color: Colors.tealAccent,
        ),
      ),
    );
  }
}