import 'package:flutter/material.dart';

class MyLayoutScreen extends StatefulWidget {
  const MyLayoutScreen({super.key});

  @override
  State<MyLayoutScreen> createState() => _MyLayoutScreenState();
}

class _MyLayoutScreenState extends State<MyLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strawberry Pavloma Screen"),
        backgroundColor: Colors.pink,
      ),
      
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 20,
            color: Colors.pink[500],
            child: Text("Strawberry Pavloma", style: TextStyle(color: Colors.white),),
          ),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}