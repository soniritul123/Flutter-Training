import 'package:flutter/material.dart';

class MyElevatedbutton2 extends StatefulWidget {
  const MyElevatedbutton2({super.key});

  @override
  State<MyElevatedbutton2> createState() => _MyElevatedbutton2State();
}

class _MyElevatedbutton2State extends State<MyElevatedbutton2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 50,
        width: 100,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [Colors.purple, Colors.black]),
          ),
        
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide( width: 3, color: Colors.white),
            elevation: 20,
            shadowColor: Colors.transparent,
            shape: CircleBorder() ),
          onPressed: () {print("Button Clicked");}, 
          child: Icon(
            Icons.add
          ),)),
          ),
    );
  }
}