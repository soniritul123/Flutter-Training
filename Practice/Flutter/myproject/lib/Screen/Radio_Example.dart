import 'package:flutter/material.dart';

class MyRadioExample extends StatefulWidget {
  const MyRadioExample({super.key});

  @override
  State<MyRadioExample> createState() => _MyRadioExampleState();
}
enum mysubject {C, Java, Python}

class _MyRadioExampleState extends State<MyRadioExample> {
  @override
  
  mysubject sub = mysubject.Python;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Radio(
              value: mysubject.C, 
              groupValue: sub,
              onChanged: (value){
                setState(() {
                  sub = mysubject.C;
                });
              }),
              title: Text("C Language"),
          ),
           ListTile(
            leading: Radio(
              value: mysubject.Java, 
              groupValue: sub,
              onChanged: (value){
                setState(() {
                  sub = mysubject.Java;
                });
              }),
              title: Text("Java"),
          ),
           ListTile(
            leading: Radio(
              value: mysubject.Python, 
              groupValue: sub,
              onChanged: (value){
                setState(() {
                  sub = mysubject.Python;
                });
              }),
              title: Text("Python"),
          ),
        ],
      ),
    );
  }
}