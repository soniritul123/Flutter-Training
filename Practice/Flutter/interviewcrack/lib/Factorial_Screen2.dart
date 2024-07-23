import 'package:flutter/material.dart';

class MyResultScreen extends StatelessWidget {
  int? result;
   MyResultScreen({super.key, required this.result});

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