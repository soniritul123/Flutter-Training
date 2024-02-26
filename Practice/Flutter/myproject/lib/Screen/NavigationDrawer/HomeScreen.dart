import 'package:flutter/material.dart';

class MyHomeScreen1 extends StatelessWidget {
  const MyHomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      //automaticallyImplyLeading: false,
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}