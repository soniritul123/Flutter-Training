import 'package:flutter/material.dart';

class MyHomeTab extends StatefulWidget {
  const MyHomeTab({super.key});

  @override
  State<MyHomeTab> createState() => _MyHomeTabState();
}

class _MyHomeTabState extends State<MyHomeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(child: Text("Home", style: TextStyle(fontSize: 25),)),
    );
  }
}