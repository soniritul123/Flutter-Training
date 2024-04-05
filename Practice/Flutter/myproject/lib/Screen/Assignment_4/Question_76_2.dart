import 'package:flutter/material.dart';

class Question76Page2 extends StatefulWidget {
  var a, b;
  Question76Page2({super.key, this.a,this.b});

  @override
  State<Question76Page2> createState() => _Que76p2State();
}

class _Que76p2State extends State<Question76Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 76 Page 2"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(child: Text(" addition = ${widget.a+widget.b}")),
    );
  }
}