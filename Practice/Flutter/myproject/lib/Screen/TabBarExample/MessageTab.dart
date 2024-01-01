import 'package:flutter/material.dart';

class MyMessageTab extends StatefulWidget {
  const MyMessageTab({super.key});

  @override
  State<MyMessageTab> createState() => _MyMessageTabState();
}

class _MyMessageTabState extends State<MyMessageTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 120, 101, 123),
      child: Center(child: Text("Message", style: TextStyle(fontSize: 25),)),
    );
  }
  }
