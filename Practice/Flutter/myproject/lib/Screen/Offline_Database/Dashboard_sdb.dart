import 'package:flutter/material.dart';
import 'package:myproject/Screen/Offline_Database/Models/Student.dart';
import 'package:myproject/Screen/Offline_Database/add_student_db.dart';
import 'package:myproject/Screen/Offline_Database/service.dart';

class MyDashboarddb extends StatefulWidget {
  const MyDashboarddb({super.key});

  @override
  State<MyDashboarddb> createState() => _MyDashboarddbState();
}

class _MyDashboarddbState extends State<MyDashboarddb> {
late List<Student> _studentList = <Student>[]; // declaring student list

getAllStudents() async{
  var _studentModel = Student();
  var _service = MyService();

  var _allStudent = await _service.readService();

  _allStudent.forEach((student) => {
    _studentModel.id = student['id'],
    _studentModel.name = student['name'],
    _studentModel.subject = student['subject'],
    _studentModel.city = student['city'],

    _studentList.add(_studentModel)
  });

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder:(context, index) {
          return Card(
            child: Column(
              children: [
                Text("Name"),
                Text("Subject"),
                Text("City"),
              ],
            ),
          );
      },),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) => MyAddStudentDB(),));
      },
      child: Icon(Icons.add),
      ),
    );
  }
}