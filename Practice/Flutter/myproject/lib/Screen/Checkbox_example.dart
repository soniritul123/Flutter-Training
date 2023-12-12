import 'package:flutter/material.dart';

class MYCheckbox extends StatefulWidget {
  const MYCheckbox({super.key});

  @override
  State<MYCheckbox> createState() => _MYCheckboxState();
}

class _MYCheckboxState extends State<MYCheckbox> {
  List<String> mysubjects = [];
  bool? clanguage = false;
  bool? Java = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Example"),
      ),
      body: Column(children: [
        CheckboxListTile(
          title:Text("C Language"),
          value: clanguage, 
          onChanged: (bool? value) {
            setState(() {
              if(value!)
              {
                if(!mysubjects.contains("C Language")){
                  mysubjects.add("C Language");
                }
              }
              else{
                if(mysubjects.contains("C Language")){
                  mysubjects.remove("C Language");
                }
              }
              clanguage = value;
              print(mysubjects);
            });
          }),
          CheckboxListTile(
          title:Text("Java"),
          value: Java, 
          onChanged: (bool? value) {
            setState(() {
              if(value!)
              {
                if(!mysubjects.contains("Java")){
                  mysubjects.add("Java");
                }
              }
              else{
                if(mysubjects.contains("Java")){
                  mysubjects.remove("Java");
                }
              }
              Java = value;
              print(mysubjects);
            });
          })
      ]),
    );
  }
}