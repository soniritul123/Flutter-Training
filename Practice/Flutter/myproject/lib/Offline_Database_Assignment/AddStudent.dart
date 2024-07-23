
import 'package:flutter/material.dart';
import 'package:myproject/Offline_Database_Assignment/Dashboard.dart';
import 'package:myproject/Offline_Database_Assignment/Mytextwidget.dart';
import 'package:myproject/Offline_Database_Assignment/Service.dart';
import 'package:myproject/Offline_Database_Assignment/StudentModel.dart';


class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _marksController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Addmission"),
      ),
      body: Column(
        children: [
          MyTextFieldWidget(controller: _nameController, hint: "Enter your name", lable: "Name"),
          MyTextFieldWidget(controller: _subjectController, hint: "Enter your subject", lable: "Subject"),
          MyTextFieldWidget(controller: _marksController, hint: "Enter your marks", lable: "Marks"),
          ElevatedButton(onPressed: () async {

            var studentModel = StudentModel();   //object creation of  studentModel
            var _studentServices = StudentServices();

            studentModel.name = _nameController.text.toString();
            studentModel.subject = _subjectController.text.toString();
            studentModel.marks = _marksController.text.toString();

            var result = await _studentServices.insertService("Student",studentModel);

            print("Result = $result");

            setState(() {
              _nameController.clear();
              _subjectController.clear();
              _marksController.clear();
            });  

          }, child: Text("Submit")),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardSqlFlite()));
      },
      child: Icon(Icons.list),
      ),
    );
  }
}