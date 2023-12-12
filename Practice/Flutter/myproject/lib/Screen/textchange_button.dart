import 'package:flutter/material.dart';

class MyClickButton extends StatefulWidget {
  const MyClickButton({super.key});

  @override
  State<MyClickButton> createState() => _MyClickButtonState();
}

class _MyClickButtonState extends State<MyClickButton> {
  String? coursename = "Course Name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(children: [
          Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.black,
                child: Center(child: Text("$coursename", style: TextStyle(fontSize: 40, color: Colors.white),  )),
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  coursename = "Fultter";
                });
              }, child: Text("Flutter"),),

              ElevatedButton(onPressed: () {
                setState(() {
                  coursename = "Java";
                });
              }, child: Text("Java"),),
            ],

            ),
      ],)
    );
  }
}