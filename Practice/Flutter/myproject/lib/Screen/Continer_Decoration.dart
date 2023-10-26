import 'package:flutter/material.dart';

class MyContainerDecoration extends StatelessWidget {
  const MyContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.only(right: 60, top: 30),
        // margin: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 50),
        //padding: EdgeInsets.only(left: 80),
        alignment: Alignment.bottomLeft,
        child: Icon(Icons.home, size: 30, color: Colors.orange),
        height: 250,
        width: 250,
        //color : Colors.teal,
        transform: Matrix4.rotationZ(6),
        // transform: Matrix4.rotationZ(10),
        decoration: BoxDecoration(
          color : Colors.teal,
          border : Border.all(width: 20, color: Colors.black),
          boxShadow: [
            BoxShadow(color: Colors.pink, blurRadius: 20)
          ],
          borderRadius : BorderRadius.circular(20),
        ),
      ),
    );
  }
}