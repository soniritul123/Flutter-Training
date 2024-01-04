import 'package:flutter/material.dart';

class MyFloatingButton1 extends StatefulWidget {
  const MyFloatingButton1({super.key});

  @override
  State<MyFloatingButton1> createState() => _MyFloatingButton1State();
}

class _MyFloatingButton1State extends State<MyFloatingButton1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.teal,
        onPressed: () {}, label: Text("Home"), icon: Icon(Icons.home),)
    );
  }
}