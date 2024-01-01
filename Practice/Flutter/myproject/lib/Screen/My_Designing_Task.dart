import 'package:flutter/material.dart';

class MyDesigningTask extends StatefulWidget {
  const MyDesigningTask({super.key});

  @override
  State<MyDesigningTask> createState() => _MyDesigningTaskState();
}

class _MyDesigningTaskState extends State<MyDesigningTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 200, 200),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 208, 200, 200),
        leading: Icon(Icons.home),
        title: Center(child: Text("UBACUP")),
        actions: [
          Icon(Icons.menu)
        ],
        
      ),
    );
  }
}