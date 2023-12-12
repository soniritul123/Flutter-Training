import 'package:flutter/material.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Example"),
      ),
      body: Container(
        height: 250,
        width: double.maxFinite,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text("Welcome", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
      )
    );
  }
}