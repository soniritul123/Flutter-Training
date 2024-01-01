import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[200],
      child: Center(
        child: Text("Home Page"),
      ),
    );
  }
}