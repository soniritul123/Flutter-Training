import 'package:flutter/material.dart';
import 'package:myproject/Screen/Navigator/Aboutscreen.dart';

class MyFristScreen extends StatefulWidget {
  const MyFristScreen({super.key});

  @override
  State<MyFristScreen> createState() => _MyFristScreenState();
}

class _MyFristScreenState extends State<MyFristScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frist Screen"),
      ),
      body: Container(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
        }, child: Text("Click here for About Screen")),
      ),
    );
  }
}