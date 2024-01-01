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
          TextField(
            controller: _cityController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Enter City",
              labelText: "City"
            ),
          ),
          ElevatedButton(
            onPressed: (){
              var _student = Student(); //creating student model
              var _myservice = MyService(); // creating service object

              setState(() async{
                _student.name = _nameController.text.toString();
                _student.subject = _subjectController.text.toString();
                _student.city = _cityController.text.toString();

                var result = await _myservice.insertService(_student);
                print("--------------------> Result: $result");
                _cityController.clear();
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