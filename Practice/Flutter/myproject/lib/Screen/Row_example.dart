import 'package:flutter/material.dart';
import 'package:myproject/main.dart';

class MyRowExmple extends StatelessWidget {
  const MyRowExmple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROW Example")
      ),
      body : Row(
        
        // in Row widget mainaxis allignment visible as horizontally

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home, color: Colors.blue),
          Icon(Icons.search, color: Colors.teal),
          Icon(Icons.access_alarm, color: Colors.red),
          Icon(Icons.person, color: Colors.purple),
        ],
      )
    );
  }
}