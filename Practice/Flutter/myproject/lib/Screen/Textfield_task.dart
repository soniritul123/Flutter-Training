import 'dart:io';

import 'package:flutter/material.dart';


class Mytextfieldtask extends StatefulWidget {
  const Mytextfieldtask({super.key});

  @override
  State<Mytextfieldtask> createState() => _MytextfieldtaskState();
}

class _MytextfieldtaskState extends State<Mytextfieldtask> {
  TextEditingController mynum1Controller = TextEditingController();
  TextEditingController mynum2Controller = TextEditingController();
  int? result;
  int? num1;
  int? num2;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Example"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: mynum1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
            
                  ),
                  hintText: "Enter Number 1",
                  labelText: "Num1",
                  prefixIcon: Icon(Icons.numbers),
                  prefixIconColor: Colors.black
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: mynum2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
            
                  ),
                  hintText: "Enter Number 2",
                  labelText: "Num2",
                  prefixIcon: Icon(Icons.numbers),
                  prefixIconColor: Colors.black
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    result = int.parse(mynum1Controller.text.toString()) + int.parse(mynum2Controller.text.toString()) ;
                    print(result);
                    
                  });
                }, child: Icon(Icons.add),),
                ElevatedButton(onPressed: () {
              setState(() {
               result = int.parse(mynum1Controller.text.toString()) * int.parse(mynum2Controller.text.toString()) ;
                print(result);
              });
            }, child: Text("Multiplication")),
            ElevatedButton(onPressed: () {
              setState(() {
                result = int.parse(mynum1Controller.text.toString()) ~/ int.parse(mynum2Controller.text.toString()) ;
                print(result);
              });
            }, child: Text("Division")),
            ElevatedButton(onPressed: () {
              setState(() {
               result = int.parse(mynum1Controller.text.toString()) - int.parse(mynum2Controller.text.toString()) ;
                print(result);
              });
            }, child: Text("Substraction")),
              ],
            ),
            Text("Result: $result"), 
          ],
        ),
      ),
    );
  }
}