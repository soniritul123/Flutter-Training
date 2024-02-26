import 'package:flutter/material.dart';

class MySliderExample1 extends StatefulWidget {
  const MySliderExample1({super.key});

  @override
  State<MySliderExample1> createState() => _MySliderExample1State();
}

class _MySliderExample1State extends State<MySliderExample1> {
  @override
  double SliderValue = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Slider Example1"),
      ),
      body: Slider(
        value: SliderValue,
        max: 100,
        divisions: 100,
        label: SliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            SliderValue = value;
          }
          );
        }  
      ),
    );
  }
}