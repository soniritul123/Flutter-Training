
import 'package:flutter/material.dart';

class MyMapExample extends StatefulWidget {
 MyMapExample({super.key});

  @override

  State<MyMapExample> createState() => _MyMapExampleState();
}

class _MyMapExampleState extends State<MyMapExample> {

  Map<String,dynamic>  studentData = {};
  
  @override
  TextEditingController nameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Enter Name",
                        labelText: "Name",
            ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              controller: subjectController,
              decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Enter Subject",
                        labelText: "Subject",
            ),
            ),
        ),
        ElevatedButton(
          onPressed: (){
            setState(() {
              studentData[nameController.text.toString()] = subjectController.text;
              // map["key"] = value ;
            
              print(studentData);
            });
          }, 
          child: Text("Enter Data")),
          ListView.builder(
            shrinkWrap: true,
            itemCount: studentData.length,
            itemBuilder: (context, index){
              var key = studentData.keys.elementAt(index);
              var value = studentData.values.elementAt(index);
              print(key);
              return Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                  child: Card(
                    //elevation: 20,
                    margin: EdgeInsets.all(20),
                    child: Center(child: Text("$key")),
                    
                  ),
              );
            }),
        ],
      ),
    );
  }
}