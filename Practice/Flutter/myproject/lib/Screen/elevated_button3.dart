import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyElevatedbutton3 extends StatefulWidget {
  const MyElevatedbutton3({super.key});

  @override
  State<MyElevatedbutton3> createState() => _MyElevatedbutton3State();
}

class _MyElevatedbutton3State extends State<MyElevatedbutton3> {
  @override
  Color? colorname = Colors.white;
  bool? flag = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorname,
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
          onPressed: () {
            setState(() {
              if(flag == true){
                colorname = Colors.teal;
                flag = false;
              }
              else{
                colorname = Colors.white;
                flag = true;
              }
            });
            print("Button Clicked");}, 
          child: Icon(
            Icons.add
          ),)),
          ),
    );
  }
}