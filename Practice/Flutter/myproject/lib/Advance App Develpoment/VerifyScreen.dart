import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myproject/Advance%20App%20Develpoment/HomeScreen.dart';

class verify extends StatefulWidget {
  const verify({super.key});

  @override
  State<verify> createState() => _verifyState();
}



class _verifyState extends State<verify> {

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4) , ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Myhomescreen(Username: ' ',),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Image.asset("assets/images/verify.png", height: 200,)), 
          SizedBox(height: 10,),
          Center(child: Text("Password changed successfully", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.blue),))
        ],
      ),
    );
  }
}