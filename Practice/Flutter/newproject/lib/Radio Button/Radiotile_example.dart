import 'package:flutter/material.dart';

class MyRadioListExample extends StatefulWidget {
  const MyRadioListExample({super.key});

  @override
  State<MyRadioListExample> createState() => _MyRadioListExampleState();
}

class _MyRadioListExampleState extends State<MyRadioListExample> {
  @override
  String gender = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Example"),
      ),
      body: Column(
        children: [
          RadioListTile(
            value: "Male", 
            tileColor: Colors.teal[100],
            activeColor: Color.fromARGB(255, 50, 1, 47),
            groupValue: gender, 
            onChanged: (value){
            setState(() {
              gender = value!;
            });
          },
          title: Text("Male"),
          ),
         
        RadioListTile(
            value: "Female", 
            tileColor: Colors.teal[200],
            activeColor: Color.fromARGB(255, 50, 1, 47),
            groupValue: gender, 
            onChanged: (value){
            setState(() {
              gender = value!;
            });
          },
          title: Text("Female"),
          ),
        RadioListTile(
            value: "Other", 
            tileColor: Colors.teal[300],
            activeColor: Color.fromARGB(255, 50, 1, 47),
            groupValue: gender, 
            onChanged: (value){
            setState(() {
              gender = value!;
            });
          },
          title: Text("Other"),
          ),
          Text("Selected gender is: $gender")
        ],
      ),
    );
  }
}