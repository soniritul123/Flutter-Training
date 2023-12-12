import 'package:flutter/material.dart';

class MyExtanded extends StatelessWidget {
  const MyExtanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Text(
            "Hello welcome to python",
            style: TextStyle(fontSize: 20, color: Colors.red),
          )),
          Expanded(
              child: Text(
            "Java - Programming Language",
            style: TextStyle(fontSize: 20, color: Colors.red),
          )),
          Expanded(
              child: Text(
            "Python - an Higher level programming",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ))
        ],
      ),
    );
  }
}
