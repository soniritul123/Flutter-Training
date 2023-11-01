import 'package:flutter/material.dart';

class MyScreen1 extends StatelessWidget {
  const MyScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: double.maxFinite,
            color: Colors.green,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 150,
                width: 300,
                color: Colors.red,
              ),
            ],
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            color: Colors.purple,
          ),
          Container(
            height: 150,
            width: double.maxFinite,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}