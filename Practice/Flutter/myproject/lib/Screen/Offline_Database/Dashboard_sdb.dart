
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
List<Student> _studentList = []; // declaring student list
var studentService = StudentService();
var studentModel;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  getRecordsfromDB() async{
 
  var studentService = StudentService();

  var allStudent = await studentService.readService();

  allStudent.forEach((student) => {
    studentModel = Student();
    setState((){
      studentModel.id = student['id'],
      studentModel.name = student['name'],
      studentModel.subject = student['subject'],

       studentList.add(studentModel);
    })
    
  });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        title: Text("Dashboard"),
      ),
      body: ListView.builder(
        itemCount: _studentList.length,
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 100,
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text("${_studentList[index].name}"),
                  subtitle: Text("${_studentList[index].subject}"),
                  trailing: Wrap(
                    children: [Icon(Icons.edit), SizedBox(width: 20,), Icon(Icons.delete)],
                  ),
                ),
              ),
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