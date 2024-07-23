import 'package:flutter/material.dart';

class MyDisplayScreen extends StatelessWidget {
  int? result;
   MyDisplayScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display result"),
      ),
      body: 
      Container(
        child: Center(child: Text("Result = ${result}"))),
    );
  }
}