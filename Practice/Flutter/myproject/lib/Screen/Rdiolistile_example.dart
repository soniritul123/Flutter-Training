import 'package:flutter/material.dart';

class MyRadioListile extends StatefulWidget {
  const MyRadioListile({super.key});

  @override
  State<MyRadioListile> createState() => _MyRadioListileState();
}

class _MyRadioListileState extends State<MyRadioListile> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Example"),
      ),
      body: Column(
        children: [
          RadioListTile(title: Text("Male"), value: "Male", groupValue: gender, onChanged: (value){
            setState(() {
              gender = value;
            });
          }),
          RadioListTile(title: Text("Female"), value: "Female", groupValue: gender, onChanged: (value){
            setState(() {
              gender = value;
            });
          }),
          RadioListTile(title: Text("Other"), value: "Other", groupValue: gender, onChanged: (value){
            setState(() {
              gender = value;
              
            });
           }),
           Text("$gender", style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}