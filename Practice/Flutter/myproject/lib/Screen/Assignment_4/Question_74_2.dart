import 'package:flutter/material.dart';

class Question74_2 extends StatefulWidget {
  var a, b;
  Question74_2({super.key, this.a,this.b});

  @override
  State<Question74_2> createState() => _Question74_2State();
}

class _Question74_2State extends State<Question74_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_74 Page 2"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(child: Text(" addition = ${widget.a+widget.b}")),
    );
  }
}