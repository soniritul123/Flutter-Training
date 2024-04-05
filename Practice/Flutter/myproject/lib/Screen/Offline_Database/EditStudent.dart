import 'package:flutter/material.dart';
import 'package:myproject/Screen/Offline_Database/Dashboard_sdb.dart';
import 'package:myproject/Screen/Offline_Database/Models/Student.dart';
import 'package:myproject/Screen/Offline_Database/service.dart';

class MyEditStudent extends StatefulWidget {
  Student student;
  const MyEditStudent({super.key});

  @override
  State<MyEditStudent> createState() => _MyEditStudentState();
}

class _MyEditStudentState extends State<MyEditStudent> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _nameController.text = widget.student.name!;
      _subjectController.text = widget.student.subject!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Column(
        children: [
         Padding(padding: const EdgeInsets.all(12),
         child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Enter Name",
              labelText: "Name"
            ),
          ),
         ),
        Padding(padding: const EdgeInsets.all(12),
          child: TextField(
            controller: _subjectController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Enter Subject",
              labelText: "Subject"
            ),
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

                Navigator.push(context, MaterialPageRoute(builder: (context) => MyDashboarddb(),));
              });
            
            }, 
            child: Text("Submit")),
        
        ],
      ),
      
    );
  }
}