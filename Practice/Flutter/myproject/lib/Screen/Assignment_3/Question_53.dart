import 'package:flutter/material.dart';

class MyQuestion53 extends StatefulWidget {
  const MyQuestion53({super.key});

  @override
  State<MyQuestion53> createState() => _MyQuestion53State();
}

class _MyQuestion53State extends State<MyQuestion53> {
  @override
  Color cname = Colors.white;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cname,
      appBar: AppBar(
        title: Text("Color Change On Button Click"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  cname = Colors.blue;
                });
              },
              child: Text("Blue"))
        ],
      ),
    );
  }
}