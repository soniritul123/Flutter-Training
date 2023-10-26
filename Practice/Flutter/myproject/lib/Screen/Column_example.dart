import 'package:flutter/material.dart';

class MyColumnExample extends StatelessWidget {
  const MyColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            margin: EdgeInsets.all(50),
            height: 100,
            width: double.maxFinite,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.all(50),
            height: 100,
            width: double.maxFinite,
            color: Colors.blue,
          )
          // Icon(Icons.home, color: Colors.blue),
          // Icon(Icons.search, color: Colors.teal),
          // Icon(Icons.access_alarm, color: Colors.red),
          // Icon(Icons.person, color: Colors.purple),
        ],
      ),
    );
  }
}