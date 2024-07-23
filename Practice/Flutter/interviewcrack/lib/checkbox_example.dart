import 'package:flutter/material.dart';

class MyCheckboxExample extends StatefulWidget {
  const MyCheckboxExample({super.key});

  @override
  State<MyCheckboxExample> createState() => _MyCheckboxExampleState();
}

class _MyCheckboxExampleState extends State<MyCheckboxExample> {
  List<String> mysubjects = [];
  bool? clanguage = false;
  bool? Java = false;
  bool? Python = false;

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
              if(mysubjects.contains("C Language"))
              {
                mysubjects.remove("C Language");
              }
              else{
                mysubjects.add("C Language");
              }
              clanguage = value;
              
            });
          }),
          CheckboxListTile(
          title:Text("Python"),
          value: Python, 
          onChanged: (bool? value) {
            setState(() {
              if(mysubjects.contains("Python"))
              {
                mysubjects.remove("Python");
              }
              else{
                mysubjects.add("Python");
              }
              Python = value;
         
            });
          }),
          CheckboxListTile(
          title:Text("Java"),
          value: Java, 
          onChanged: (bool? value) {
            setState(() {
              if(mysubjects.contains("Java"))
              {
                mysubjects.remove("Java");
              }
              else{
                mysubjects.add("Java");
              }
              Java = value;
              
            });
          }),

        ListView.builder(
            shrinkWrap: true,
            itemCount: mysubjects.length,
            itemBuilder: (context, index){
              return Container(
               
                height: 100,
                width: MediaQuery.of(context).size.width,
                  child: Card(
                    //elevation: 20,
                    margin: EdgeInsets.all(20),
                    child: Center(child: Text("${mysubjects[index]}")),
                  ),
              
              );
            }),

      ]),
    );
  }
}