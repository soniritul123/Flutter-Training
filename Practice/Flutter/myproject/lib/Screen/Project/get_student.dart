import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myproject/Screen/Project/register_student.dart';

//flutter run -d chrome --web-browser-flag "--disable-web-security"

class GetStudent extends StatefulWidget {
  const GetStudent({super.key});

  @override
  State<GetStudent> createState() => _GetStudentState();
}

class _GetStudentState extends State<GetStudent> {
  List<dynamic> myData = [];
  Future<dynamic> fetchRecord() async {
    try {
      var response = await http.get(
        Uri.parse("https://6decflutterapp.000webhostapp.com/getStudent.php"),
        headers: {"Content-Type": "application/json"},
      );
      if (response.statusCode == 200) {
        setState(() {
          myData = jsonDecode(response.body);
        });
      } else {}
      // print(response.statusCode);
      // return response;
    } catch (e) {}
  }

  Future<void> deleterecord(String? id) async {
    var response = await http.post(
        Uri.parse(
            "https://6decflutterapp.000webhostapp.com/delete_student.php"),
        body: {"id": id});
    if (response.statusCode == 200) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GetStudent(),
          ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchRecord();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("API Application"),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (context, index) {
          return Container(
            child: GestureDetector(
              onTap: () {
                deleterecord(myData[index]["id"]);
              },
              child: Card(
                color: Colors.transparent,
                child: Column(children: [
                  Column(
                    children: [
                      Center(child: Text("UserID: ${myData[index]["id"]}")),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                          child:
                              Text("UserName: ${myData[index]["username"]}")),
                      SizedBox(
                        height: 5,
                      ),
                      Center(child: Text("City: ${myData[index]["city"]}")),
                      SizedBox(
                        height: 5,
                      ),
                      
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostStudent(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
