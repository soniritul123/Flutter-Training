import 'package:flutter/material.dart';
import 'package:myproject/Screen/Offline_Database/Models/Student.dart';
import 'package:myproject/Screen/Offline_Database/service.dart';

class MyAddStudentDB extends StatefulWidget {
  const MyAddStudentDB({super.key});

  @override
  State<MyAddStudentDB> createState() => _MyAddStudentDBState();
}

class _MyAddStudentDBState extends State<MyAddStudentDB> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("Add Student", style: TextStyle(fontSize: 25),),
          ),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Enter Name",
              labelText: "Name"
            ),
          ),
          SizedBox(width: 20,),
          TextField(
            controller: _subjectController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Enter Subject",
              labelText: "Subject"
            ),
          ),
         
          ElevatedButton(
            onPressed: (){
              setState(() async{

              String? name_v = _nameController.text.toString();
              String? subject_v = _subjectController.text.toString();
              
              print(name_v);

              var student = Student(); //creating student model
             
                student.name = name_v;
                student.subject = subject_v;

                var _studentservice = StudentService(); // creating service object
                var result = await _studentservice.insertService(student);

                print("--------------------> Result: $result");

                _nameController.clear();
                _subjectController.clear();
              });
            
            }, 
            child: Text("Submit")),
        
        ],
      ),
      
    );
  }
}