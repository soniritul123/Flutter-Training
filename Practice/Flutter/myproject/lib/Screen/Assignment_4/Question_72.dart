import 'package:flutter/material.dart';

class Question72 extends StatefulWidget {
  const Question72({super.key});

  @override
  State<Question72> createState() => _Question72State();
}

class _Question72State extends State<Question72> {
  var alert;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_72"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          alert = AlertDialog(
            title: Text("Alert"),
            content: Text("press bottom for grant permession"),
            actions: [
              ElevatedButton(onPressed: (){}, child: Text("yes"))
            ],
          )
        ],
      ),
    );
  }
}