import 'package:flutter/material.dart';

class MyColorButton extends StatefulWidget {
  const MyColorButton({super.key});

  @override
  State<MyColorButton> createState() => _MyColorButtonState();
}

class _MyColorButtonState extends State<MyColorButton> {
  Color colorname = Colors.black;
  
  get decoration => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(children: [
          Container(
                height: 200,
                width: double.maxFinite,
                color: colorname,
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  colorname = Colors.teal;
                });
              }, 
            
              child: Text("Color")),

              ElevatedButton(onPressed: () {
                setState(() {
                  colorname = Colors.white;
                });
              }, child: Text("Color"),),

              ElevatedButton(onPressed: () {
                setState(() {
                  colorname = Colors.lightGreen;
                });
              }, child: Text("Color"),),

              ElevatedButton(onPressed: () {
                setState(() {
                  colorname = Colors.grey;
                });
              }, child: Text("Color")),

              ElevatedButton(onPressed: () {
                setState(() {
                  colorname = Colors.purple;
                });
              }, child: Text("Color"),),

              ElevatedButton(onPressed: () {
                setState(() {
                  colorname = Colors.brown;
                });
              }, child: Text("Color")),
            ],

            ),
      ],)
    );
  }
}