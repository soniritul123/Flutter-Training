import 'package:flutter/material.dart';

class MyQuestion58 extends StatefulWidget {
  const MyQuestion58({super.key});

  @override
  State<MyQuestion58> createState() => _MyQuestion58State();
}

class _MyQuestion58State extends State<MyQuestion58> {
  @override
  int pinkValue = 0;
  int orangeValue = 0;
  int blueValue = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Seekbar")),
      body: Container(
        child: Column(
          children: <Widget>[
            ColorSeekBar(
              color: Colors.pink,
              value: pinkValue,
              onChanged: (value) {
                setState(() {
                  pinkValue = value;
                });
              },
            ),
            ColorSeekBar(
              color: Colors.orange,
              value: orangeValue,
              onChanged: (value) {
                setState(() {
                  orangeValue = value;
                });
              },
            ),
            ColorSeekBar(
              color: Colors.blue,
              value: blueValue,
              onChanged: (value) {
                setState(() {
                  blueValue = value;
                });
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(pinkValue, orangeValue, blueValue, 1),
    );
  }
}

class ColorSeekBar extends StatelessWidget {
  final Color color;
  final int value;
  final ValueChanged<int> onChanged;

  ColorSeekBar(
      {required this.color, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          color.toString().split('(0x')[1].split(')')[0],
          style: TextStyle(color: color),
        ),
        Slider(
          value: value.toDouble(),
          min: 0,
          max: 255,
          onChanged: (double newValue) {
            onChanged(newValue.round());
          },
        ),
      ],
    );
  }
}
