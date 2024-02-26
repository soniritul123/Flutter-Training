import 'package:flutter/material.dart';

class MyStackExample1 extends StatefulWidget {
  const MyStackExample1({super.key});

  @override
  State<MyStackExample1> createState() => _MyStackExample1State();
}

class _MyStackExample1State extends State<MyStackExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Action Stack"),
      ),
      body: Container(
        child: Text("Welcom to Stack"),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: (){},
              child: Icon(Icons.add_a_photo),
            ),),

            Positioned(
            bottom: 16,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: (){},
              child: Icon(Icons.home),
            ),),
        ],
      ),
      
    );
  }
}